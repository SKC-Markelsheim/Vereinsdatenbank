CREATE PROCEDURE [dbo].[ColumnInfo]
	@TableName varchar(150)
AS
 select 
        st.name [Table],
        sc.name [Column],
		case when sc.is_nullable = 1 then 'X' else '' end [IsNull],
		sc.max_length [Length],
		ty.name [Datentyp],
        sep.value [Description]
    from sys.tables st
    inner join sys.columns sc on st.object_id = sc.object_id
    left join sys.extended_properties sep on st.object_id = sep.major_id
                                         and sc.column_id = sep.minor_id
                                         and sep.name = 'MS_Description'
	inner join sys.types ty on sc.user_type_id = ty.user_type_id
    where st.name = @TableName
