using CatalogService as service from '../../srv/catalog';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Author}',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Value : genre.name,
            Label : '{i18n>Genre}',
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Value : genre.name,
                Label : '{i18n>Genre}',
            },
            {
                $Type : 'UI.DataField',
                Label : 'cover',
                Value : cover,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Additional Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Books with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>BookDetail}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : author,
        },
    }
);
