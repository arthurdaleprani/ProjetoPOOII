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