namespace DataModel.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialDatabase : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Kunden",
                c => new
                    {
                        Id = c.Int(nullable: false),
                        Kundenbezeichnung = c.String(nullable: false, maxLength: 1000, storeType: "nvarchar"),
                        Ort = c.String(unicode: false),
                        Bundesland = c.String(unicode: false),
                        Adresse = c.String(unicode: false),
                        Telefonnummer1 = c.String(nullable: false, unicode: false),
                        Telefonnummer2 = c.String(unicode: false),
                        Email = c.String(unicode: false),
                        In_bearbeitung = c.Int(nullable: false),
                        Änderungsdatum = c.DateTime(nullable: false, precision: 0),
                        Unterlagen_gesendet = c.Int(nullable: false),
                        Angebot_geschickt = c.Int(nullable: false),
                        Interesse_kooperationsvertrag = c.Int(nullable: false),
                        Abgeschlossen = c.Int(nullable: false),
                        Notizen = c.String(unicode: false),
                        Angebotsnummer = c.Int(nullable: false),
                        Abklärung = c.String(maxLength: 500, storeType: "nvarchar"),
                        UserId = c.Int(nullable: false),
                        Contactperson_Firstname = c.String(unicode: false),
                        Contactperson_Lastname = c.String(unicode: false),
                        Contactperson_Title = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Benutzer", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Benutzer",
                c => new
                    {
                        Id = c.Int(nullable: false),
                        Firstname = c.String(unicode: false),
                        Lastname = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Kunden", "UserId", "dbo.Benutzer");
            DropIndex("dbo.Kunden", new[] { "UserId" });
            DropTable("dbo.Benutzer");
            DropTable("dbo.Kunden");
        }
    }
}
