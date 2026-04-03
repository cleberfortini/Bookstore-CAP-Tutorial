using BookstoreService as service from '../../srv/service';
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Titulo}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PrublicadoEm}',       
                Value : publisheAt,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Pginas}',
                Value : pages,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Preco}',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Informações Gerais',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Informações adicionais',
            ID : 'InformaesAdicionais',
            Target : '@UI.FieldGroup#InformaesAdicionais',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Capitulos}',
            ID : 'i18nCapitulos',
            Target : 'Chapters/@UI.LineItem#i18nCapitulos',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Titulo}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Gnero}',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Npaginas}',
            Value : pages,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PublicadoEm}',
            Value : publisheAt,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Preco}',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
            Label : '{i18n>CriadoPor}',
        },
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : 'stock',
        },
        {
            $Type : 'UI.DataField',
            Value : status_code,
            Label : 'status_code',
            Criticality : status.criticality,
        },
    ],
    UI.SelectionFields : [
        price,
    ],
    UI.HeaderInfo : {
        TypeName : 'Book',
        TypeNamePlural : 'Books',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : genre,
        },
        TypeImageUrl : 'sap-icon://education',
    },
    UI.FieldGroup #InformaesAdicionais : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : author.createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : author.createdBy,
            },
        ],
    },
);

annotate service.Books with {
    author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.Books with {
    price @Common.Label : '{i18n>Preco}'
};

annotate service.Chapters with @(
    UI.LineItem #i18nCapitulos : [
        {
            $Type : 'UI.DataField',
            Value : book.Chapters.number,
            Label : 'number',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapters.pages,
            Label : 'pages',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapters.title,
            Label : 'title',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapters.book.author.name,
            Label : 'name',
        },
    ]
);

