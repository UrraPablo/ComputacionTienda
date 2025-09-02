import React, { useState } from 'react';
import Filtro from './filtro';
import { data } from './makeData';

const LayoutConSidebar = () => {
  const [selectedCities, setSelectedCities] = useState([]);
  const [salaryRange, setSalaryRange] = useState([0, 100000]);

  // Filtrar los datos según los filtros
  const filteredData = data.filter(item => {
    const matchCity = selectedCities.length === 0 || selectedCities.includes(item.city);
    const matchSalary = item.salary >= salaryRange[0] && item.salary <= salaryRange[1];
    return matchCity && matchSalary;
  });

  return (
    <div style={{ display: 'flex', height: '100vh' }}>
      {/* Sidebar */}
      <aside style={{ width: 250, padding: 20, backgroundColor: '#f8f8f8', borderRight: '1px solid #ddd' }}>
        <h3>Filtros</h3>

        <h4>Ciudad</h4>
        {["Buenos Aires", "Córdoba", "Rosario", "Mendoza"].map(city => (
          <div key={city}>
            <label>
              <input
                type="checkbox"
                value={city}
                checked={selectedCities.includes(city)}
                onChange={e => {
                  const value = e.target.value;
                  setSelectedCities(prev =>
                    prev.includes(value) ? prev.filter(c => c !== value) : [...prev, value]
                  );
                }}
              />
              {city}
            </label>
          </div>
        ))}

        <h4>Rango de salario</h4>
        <input
          type="range"
          min="0"
          max="100000"
          step="5000"
          value={salaryRange[1]}
          onChange={e => setSalaryRange([0, Number(e.target.value)])}
        />
        <div>Hasta: ${salaryRange[1]}</div>
      </aside>

      {/* Contenido principal */}
      <main style={{ flex: 1, padding: 20 }}>
        <Filtro filteredData={filteredData} />
      </main>
    </div>
  );
};

export default LayoutConSidebar;
