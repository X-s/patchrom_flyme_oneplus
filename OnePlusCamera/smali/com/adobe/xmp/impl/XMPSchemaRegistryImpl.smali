.class public final Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;
.super Ljava/lang/Object;
.source "XMPSchemaRegistryImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPSchemaRegistry;
.implements Lcom/adobe/xmp/XMPConst;


# instance fields
.field private aliasMap:Ljava/util/Map;

.field private namespaceToPrefixMap:Ljava/util/Map;

.field private p:Ljava/util/regex/Pattern;

.field private prefixToNamespaceMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    const-string/jumbo v0, "[/*?\\[\\]]"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardNamespaces()V

    .line 59
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerStandardAliases()V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerStandardAliases()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v5

    .line 443
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/AliasOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v12

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "Author"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "creator"

    move-object v0, p0

    .line 447
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Authors"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "creator"

    const/4 v11, 0x0

    move-object v6, p0

    .line 448
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Description"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "description"

    const/4 v11, 0x0

    move-object v6, p0

    .line 449
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Format"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "format"

    const/4 v11, 0x0

    move-object v6, p0

    .line 450
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Keywords"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "subject"

    const/4 v11, 0x0

    move-object v6, p0

    .line 451
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Locale"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "language"

    const/4 v11, 0x0

    move-object v6, p0

    .line 452
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v8, "Title"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const/4 v11, 0x0

    move-object v6, p0

    .line 453
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v8, "Copyright"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const/4 v11, 0x0

    move-object v6, p0

    .line 454
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v2, "Author"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "creator"

    move-object v0, p0

    .line 457
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "BaseURL"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "BaseURL"

    const/4 v11, 0x0

    move-object v6, p0

    .line 458
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "CreationDate"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "CreateDate"

    const/4 v11, 0x0

    move-object v6, p0

    .line 459
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "Creator"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "CreatorTool"

    const/4 v11, 0x0

    move-object v6, p0

    .line 460
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "ModDate"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "ModifyDate"

    const/4 v11, 0x0

    move-object v6, p0

    .line 461
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "Subject"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "description"

    move-object v6, p0

    move-object v11, v12

    .line 462
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v8, "Title"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    move-object v6, p0

    move-object v11, v12

    .line 463
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v2, "Author"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "creator"

    move-object v0, p0

    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "Caption"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "description"

    move-object v6, p0

    move-object v11, v12

    .line 467
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "Copyright"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    move-object v6, p0

    move-object v11, v12

    .line 468
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "Keywords"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "subject"

    const/4 v11, 0x0

    move-object v6, p0

    .line 469
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "Marked"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v10, "Marked"

    const/4 v11, 0x0

    move-object v6, p0

    .line 470
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "Title"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    move-object v6, p0

    move-object v11, v12

    .line 471
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v8, "WebStatement"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v10, "WebStatement"

    const/4 v11, 0x0

    move-object v6, p0

    .line 472
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v2, "Artist"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "creator"

    move-object v0, p0

    .line 475
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v8, "Copyright"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const/4 v11, 0x0

    move-object v6, p0

    .line 476
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v8, "DateTime"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "ModifyDate"

    const/4 v11, 0x0

    move-object v6, p0

    .line 477
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v8, "ImageDescription"

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "description"

    const/4 v11, 0x0

    move-object v6, p0

    .line 478
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v7, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v8, "Software"

    const-string/jumbo v9, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "CreatorTool"

    const/4 v11, 0x0

    move-object v6, p0

    .line 479
    invoke-virtual/range {v6 .. v11}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "Author"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "creator"

    move-object v0, p0

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "Copyright"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "rights"

    move-object v0, p0

    move-object v5, v12

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "CreationTime"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "CreateDate"

    const/4 v5, 0x0

    move-object v0, p0

    .line 484
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "Description"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "description"

    move-object v0, p0

    move-object v5, v12

    .line 485
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "ModificationTime"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "ModifyDate"

    const/4 v5, 0x0

    move-object v0, p0

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "Software"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "CreatorTool"

    const/4 v5, 0x0

    move-object v0, p0

    .line 487
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string/jumbo v1, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v2, "Title"

    const-string/jumbo v3, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v4, "title"

    move-object v0, p0

    move-object v5, v12

    .line 488
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 489
    return-void
.end method

.method private registerStandardNamespaces()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v1, "xml"

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string/jumbo v1, "rdf"

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v1, "dc"

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string/jumbo v1, "Iptc4xmpCore"

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "adobe:ns:meta/"

    const-string/jumbo v1, "x"

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/iX/1.0/"

    const-string/jumbo v1, "iX"

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "xmp"

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "xmpRights"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "xmpMM"

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string/jumbo v1, "xmpBJ"

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v1, "xmpNote"

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v1, "pdf"

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string/jumbo v1, "pdfx"

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.npes.org/pdfx/ns/id/"

    const-string/jumbo v1, "pdfxid"

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string/jumbo v1, "pdfaSchema"

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string/jumbo v1, "pdfaProperty"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string/jumbo v1, "pdfaType"

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string/jumbo v1, "pdfaField"

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string/jumbo v1, "pdfaid"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string/jumbo v1, "pdfaExtension"

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string/jumbo v1, "photoshop"

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/album/1.0/"

    const-string/jumbo v1, "album"

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/exif/1.0/"

    const-string/jumbo v1, "exif"

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string/jumbo v1, "aux"

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v1, "tiff"

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/png/1.0/"

    const-string/jumbo v1, "png"

    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string/jumbo v1, "jpeg"

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string/jumbo v1, "jp2k"

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string/jumbo v1, "crs"

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string/jumbo v1, "bmsp"

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string/jumbo v1, "creatorAtom"

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/asf/1.0/"

    const-string/jumbo v1, "asf"

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string/jumbo v1, "wav"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string/jumbo v1, "xmpDM"

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string/jumbo v1, "xmpx"

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string/jumbo v1, "xmpT"

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string/jumbo v1, "xmpTPg"

    .line 231
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string/jumbo v1, "xmpG"

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v1, "xmpGImg"

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string/jumbo v1, "stFNT"

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string/jumbo v1, "stDim"

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v1, "stEvt"

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v1, "stRef"

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string/jumbo v1, "stVer"

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string/jumbo v1, "stJob"

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string/jumbo v1, "stMfs"

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string/jumbo v1, "xmpidq"

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteNamespace(Ljava/lang/String;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 134
    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 1

    .prologue
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findAliases(Ljava/lang/String;)[Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 5

    .prologue
    monitor-enter p0

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    if-nez v1, :cond_1

    .line 293
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/adobe/xmp/properties/XMPAliasInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 283
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAliases()Ljava/util/Map;
    .locals 2

    .prologue
    monitor-enter p0

    .line 430
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 151
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ":"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNamespaces()Ljava/util/Map;
    .locals 2

    .prologue
    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefixes()Ljava/util/Map;
    .locals 2

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 336
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 337
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 338
    invoke-static {p3}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 339
    invoke-static {p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 342
    if-nez p5, :cond_1

    .line 345
    new-instance v5, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/AliasOptions;-><init>()V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alias and actual property names must be simple"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_1
    :try_start_1
    new-instance v5, Lcom/adobe/xmp/options/AliasOptions;

    .line 344
    invoke-virtual {p5}, Lcom/adobe/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 343
    invoke-static {v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    .line 343
    invoke-direct {v5, v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>(I)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p0, p3}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    if-eqz v0, :cond_3

    .line 360
    if-eqz v3, :cond_4

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 373
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 380
    new-instance v0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;-><init>(Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    .line 421
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 422
    return-void

    .line 358
    :cond_3
    :try_start_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alias namespace is not registered"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 362
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Actual namespace is not registered"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 371
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alias is already existing"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 375
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Actual property is already an alias, use the base property"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x3a

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 79
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPrefix(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 86
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    if-nez v0, :cond_2

    .line 101
    if-nez v1, :cond_3

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->namespaceToPrefixMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 118
    return-object p2

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "The prefix is a bad XML name"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    .line 97
    return-object v0

    :cond_3
    const/4 v0, 0x1

    move v1, v0

    move-object v0, p2

    .line 106
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->prefixToNamespaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object p2, v0

    .line 112
    goto :goto_1
.end method

.method public declared-synchronized resolveAlias(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->aliasMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/properties/XMPAliasInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 258
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
