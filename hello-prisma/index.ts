import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {

    const newMedico = await prisma.medico.create({
        data: {
          idMed: 1,
          crm: 'CRM9876-ES',
          nome: 'Dr. Rodrigo',
          endereco: 'Rua Enseada Carioca, 60',
          especialidade: 'Pediatria',
          telefone: '27999123453',
        },
      });
       
    const newMae = await prisma.mae.create({
        data: {
          idMae:1,
          endereco: 'Rua Martins, 66',
          nome: 'Julia Lopes',
          telefone: '2799967586',
          dataNasc:'1990-05-20',
        },
      });
    
      const newBebe = await prisma.bebe.create({
        data: {
          idBebe:1,
          idMed: 1,
          idMae: 1,
          nome: 'Lucas Lopes',
          dataNasc: '2023-08-30',
          pesoNasc: '3.2 kg',
          nomeMae: 'Julia Lopes',
          altura: '50 cm',
        },
      });
    
    



   
      await prisma.$disconnect();
    }

    
    





  




 



  
  



main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })