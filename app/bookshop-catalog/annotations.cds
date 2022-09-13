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
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : '{i18n>Stock}',
            Criticality : criticality,
            CriticalityRepresentation : #WithoutIcon,
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
                Label : 'intro',
                Value : intro,
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
            {
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
                Criticality : criticality,
                CriticalityRepresentation : #WithoutIcon,
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
annotate service.Books with {
    stock @Measures.Unit : 'units'
};
