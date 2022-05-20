.class public final Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;
.super Ljava/lang/Object;
.source "XMPSchemaRegistryImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPSchemaRegistry;
.implements Lcom/adobe/xmp/XMPConst;


# instance fields
.field public aliasMap:Ljava/util/Map;

.field public namespaceToPrefixMap:Ljava/util/Map;

.field public p:Ljava/util/regex/Pattern;

.field public prefixToNamespaceMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    const-string v0, "[/*?\\[\\]]"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardNamespaces()V

    .line 7
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardAliases()V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerStandardAliases()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v2}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v1

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "Author"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "creator"

    move-object v2, p0

    move-object v7, v0

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/xap/1.0/"

    const-string v9, "Authors"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "creator"

    const/4 v12, 0x0

    move-object v7, p0

    .line 4
    invoke-virtual/range {v7 .. v12}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "Description"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "description"

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "Format"

    const-string v11, "http://purl.org/dc/elements/1.1/"

    const-string v12, "format"

    const/4 v13, 0x0

    move-object v8, p0

    .line 6
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "Keywords"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v6, "subject"

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/xap/1.0/"

    const-string v10, "Locale"

    const-string v11, "http://purl.org/dc/elements/1.1/"

    const-string v12, "language"

    .line 8
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "Title"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v6, "title"

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v10, "Copyright"

    const-string v11, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v12, "rights"

    .line 10
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/pdf/1.3/"

    const-string v4, "Author"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "creator"

    move-object v7, v0

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/pdf/1.3/"

    const-string v9, "BaseURL"

    const-string v10, "http://ns.adobe.com/xap/1.0/"

    const-string v11, "BaseURL"

    const/4 v12, 0x0

    move-object v7, p0

    .line 12
    invoke-virtual/range {v7 .. v12}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/pdf/1.3/"

    const-string v4, "CreationDate"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    const-string v6, "CreateDate"

    const/4 v7, 0x0

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/pdf/1.3/"

    const-string v10, "Creator"

    const-string v11, "http://ns.adobe.com/xap/1.0/"

    const-string v12, "CreatorTool"

    move-object v8, p0

    .line 14
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/pdf/1.3/"

    const-string v4, "ModDate"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    const-string v6, "ModifyDate"

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/pdf/1.3/"

    const-string v5, "Subject"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string v7, "description"

    move-object v3, p0

    move-object v8, v1

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/pdf/1.3/"

    const-string v5, "Title"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v7, "title"

    .line 17
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/photoshop/1.0/"

    const-string v4, "Author"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "creator"

    move-object v7, v0

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/photoshop/1.0/"

    const-string v5, "Caption"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string v7, "description"

    move-object v3, p0

    .line 19
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/photoshop/1.0/"

    const-string v5, "Copyright"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v7, "rights"

    .line 20
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/photoshop/1.0/"

    const-string v10, "Keywords"

    const-string v11, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v12, "subject"

    move-object v8, p0

    .line 21
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/photoshop/1.0/"

    const-string v4, "Marked"

    const-string v5, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v6, "Marked"

    const/4 v7, 0x0

    .line 22
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/photoshop/1.0/"

    const-string v5, "Title"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v7, "title"

    move-object v3, p0

    move-object v8, v1

    .line 23
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/photoshop/1.0/"

    const-string v10, "WebStatement"

    const-string v11, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v12, "WebStatement"

    move-object v8, p0

    .line 24
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/tiff/1.0/"

    const-string v4, "Artist"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "creator"

    move-object v7, v0

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/tiff/1.0/"

    const-string v9, "Copyright"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v11, "rights"

    const/4 v12, 0x0

    move-object v7, p0

    .line 26
    invoke-virtual/range {v7 .. v12}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/tiff/1.0/"

    const-string v4, "DateTime"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    const-string v6, "ModifyDate"

    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/tiff/1.0/"

    const-string v10, "ImageDescription"

    const-string v11, "http://purl.org/dc/elements/1.1/"

    const-string v12, "description"

    move-object v8, p0

    .line 28
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/tiff/1.0/"

    const-string v4, "Software"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    const-string v6, "CreatorTool"

    .line 29
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/png/1.0/"

    const-string v4, "Author"

    const-string v5, "http://purl.org/dc/elements/1.1/"

    const-string v6, "creator"

    move-object v7, v0

    .line 30
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/png/1.0/"

    const-string v5, "Copyright"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v7, "rights"

    move-object v3, p0

    move-object v8, v1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/png/1.0/"

    const-string v10, "CreationTime"

    const-string v11, "http://ns.adobe.com/xap/1.0/"

    const-string v12, "CreateDate"

    move-object v8, p0

    .line 32
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/png/1.0/"

    const-string v5, "Description"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string v7, "description"

    move-object v8, v1

    .line 33
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v9, "http://ns.adobe.com/png/1.0/"

    const-string v10, "ModificationTime"

    const-string v11, "http://ns.adobe.com/xap/1.0/"

    const-string v12, "ModifyDate"

    move-object v8, p0

    .line 34
    invoke-virtual/range {v8 .. v13}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v3, "http://ns.adobe.com/png/1.0/"

    const-string v4, "Software"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    const-string v6, "CreatorTool"

    const/4 v7, 0x0

    .line 35
    invoke-virtual/range {v2 .. v7}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v4, "http://ns.adobe.com/png/1.0/"

    const-string v5, "Title"

    const-string v6, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v7, "title"

    move-object v3, p0

    move-object v8, v1

    .line 36
    invoke-virtual/range {v3 .. v8}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    return-void
.end method

.method private registerStandardNamespaces()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v1, "xml"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string/jumbo v1, "rdf"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adobe:ns:meta/"

    const-string/jumbo v1, "x"

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "xmp"

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "xmpRights"

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "xmpMM"

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string/jumbo v1, "xmpBJ"

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v1, "xmpNote"

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v1, "pdf"

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string/jumbo v1, "pdfx"

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string/jumbo v1, "pdfxid"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string/jumbo v1, "pdfaSchema"

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string/jumbo v1, "pdfaProperty"

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string/jumbo v1, "pdfaType"

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string/jumbo v1, "pdfaField"

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string/jumbo v1, "pdfaid"

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string/jumbo v1, "pdfaExtension"

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v1, "photoshop"

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v1, "tiff"

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v1, "png"

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string/jumbo v1, "wav"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string/jumbo v1, "xmpDM"

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string/jumbo v1, "xmpx"

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string/jumbo v1, "xmpT"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string/jumbo v1, "xmpTPg"

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string/jumbo v1, "xmpG"

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v1, "xmpGImg"

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string/jumbo v1, "stFNT"

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string/jumbo v1, "stDim"

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v1, "stEvt"

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v1, "stRef"

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string/jumbo v1, "stVer"

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string/jumbo v1, "stJob"

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string/jumbo v1, "stMfs"

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string/jumbo v1, "xmpidq"

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteNamespace(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findAliases(Ljava/lang/String;)[Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/adobe/xmp/properties/XMPAliasInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAliases()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ":"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNamespaces()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefixes()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 4
    invoke-static {p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 5
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    .line 6
    invoke-virtual {p5}, Lcom/adobe/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p5

    const/4 v1, 0x0

    .line 7
    invoke-static {p5, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p5

    .line 8
    invoke-virtual {p5}, Lcom/adobe/xmp/options/Options;->getOptions()I

    move-result p5

    invoke-direct {v0, p5}, Lcom/adobe/xmp/options/AliasOptions;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    :goto_0
    move-object v6, v0

    .line 9
    iget-object p5, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p5, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    .line 10
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p3}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 p5, 0x65

    if-eqz p1, :cond_4

    if-eqz v4, :cond_3

    .line 12
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x4

    if-nez p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 15
    new-instance p2, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;-><init>(Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 16
    iget-object p3, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_1
    :try_start_1
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Actual property is already an alias, use the base property"

    invoke-direct {p1, p2, p5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias is already existing"

    invoke-direct {p1, p2, p5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Actual namespace is not registered"

    invoke-direct {p1, p2, p5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias namespace is not registered"

    invoke-direct {p1, p2, p5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 22
    :cond_5
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias and actual property names must be simple"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPrefix(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 9
    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    move-object v0, p2

    move v3, v1

    .line 10
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-object p2

    .line 16
    :cond_4
    :try_start_2
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "The prefix is a bad XML name"

    const/16 v0, 0xc9

    invoke-direct {p1, p2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resolveAlias(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
