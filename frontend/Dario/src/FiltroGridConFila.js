import React, { useMemo, useState } from 'react';
import { MaterialReactTable } from 'material-react-table';
import { data } from './makeData';

const FiltroGrid = () => {
  const [filteredData, setFilteredData] = useState(data);
  const [columnFilters, setColumnFilters] = useState([]);

  const columns = useMemo(
    () => [
      { accessorKey: 'product', header: 'Product', size: 300 },
      { accessorKey: 'name', header: 'Name', filterVariant: 'autocomplete', size: 100 },
      {
        accessorKey: 'salary',
        header: 'Salary',
        Cell: ({ cell }) =>
          cell.getValue().toLocaleString('en-US', { style: 'currency', currency: 'USD' }),
        filterVariant: 'range-slider',
        filterFn: 'betweenInclusive',
        muiFilterSliderProps: { marks: true, step: 5000 },
      },
      { accessorKey: 'city', header: 'City', filterVariant: 'select' },
      { accessorKey: 'state', header: 'State', filterVariant: 'multi-select' },
    ],
    []
  );

  // aplicar filtros manualmente
  const handleFiltersChange = (newFilters) => {
    setColumnFilters(newFilters);

    let filtered = [...data];

    newFilters.forEach((filter) => {
      const { id, value } = filter;
      if (id === 'name' && value) {
        filtered = filtered.filter((item) =>
          item.name.toLowerCase().includes(value.toLowerCase())
        );
      } else if (id === 'salary' && value) {
        const [min, max] = value ?? [0, 1000000];
        filtered = filtered.filter((item) => item.salary >= min && item.salary <= max);
      } else if (id === 'city' && value) {
        filtered = filtered.filter((item) => item.city === value);
      } else if (id === 'state' && value?.length) {
        filtered = filtered.filter((item) => value.includes(item.state));
      }
    });

    setFilteredData(filtered);
  };

  return (
    <div>
      {/* Mostrar sólo la fila de filtros */}
      <MaterialReactTable
        columns={columns}
        data={[]} // 👈 vacío para que no muestre filas
        enableColumnFilters
        enablePagination={false}
        enableSorting={false}
        state={{ columnFilters }}
        onColumnFiltersChange={handleFiltersChange}
      />

      {/* Cuadrícula con los datos filtrados */}
      <div
        style={{
          display: 'grid',
          gridTemplateColumns: 'repeat(auto-fill, minmax(220px, 1fr))',
          gap: '20px',
          marginTop: '20px',
        }}
      >
        {filteredData.map((item, index) => (
          <div
            key={index}
            style={{
              border: '1px solid #ccc',
              borderRadius: '8px',
              padding: '10px',
              backgroundColor: '#f9f9f9',
            }}
          >
            <div><strong>Name:</strong> {item.name}</div>
            <div><strong>Salary:</strong> ${item.salary.toLocaleString()}</div>
            <div><strong>City:</strong> {item.city}</div>
            <div><strong>State:</strong> {item.state}</div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default FiltroGrid;
