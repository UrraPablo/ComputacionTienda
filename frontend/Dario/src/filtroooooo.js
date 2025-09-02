import { useMemo } from 'react';
import {
    MaterialReactTable,
    useMaterialReactTable,
} from 'material-react-table';
import { data } from './makeData';

const Filtro = () => {
    const columns = useMemo(
        () => [
        {
            accessorKey: 'name',
            header: 'Name',
            filterVariant: 'autocomplete', // default
            size: 100,
        },
        {
            accessorKey: 'salary',
            header: 'Salary',
            Cell: ({ cell }) =>
            cell.getValue().toLocaleString('en-US', {
                style: 'currency',
                currency: 'USD',
            }),
            filterVariant: 'range-slider',
            filterFn: 'betweenInclusive', // default (or between)
            muiFilterSliderProps: {
            marks: true,
            step: 5000,
            valueLabelFormat: (value) =>
                value.toLocaleString('en-US', {
                style: 'currency',
                currency: 'USD',
                }),
            },
        },
        {
            accessorKey: 'city',
            header: 'City',
            filterVariant: 'select',
        },
        {
            accessorKey: 'state',
            header: 'State',
            filterVariant: 'multi-select',
        },
        ],
        [],
    );

    const table = useMaterialReactTable({
        columns,
        data,
        enableFacetedValues: true,
        initialState: { showColumnFilters: true },
    });

    return <MaterialReactTable table={table} />;
};

export default Filtro;
