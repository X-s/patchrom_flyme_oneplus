.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/FileProvider$PathStrategy;,
        Landroid/support/v4/content/FileProvider$SimplePathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 303
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 630
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 754
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, p0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 759
    return-object v0

    .line 754
    :cond_0
    aget-object v4, p1, v2

    .line 755
    if-nez v4, :cond_1

    .line 754
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 756
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    new-array v0, p1, [Ljava/lang/Object;

    .line 770
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 763
    new-array v0, p1, [Ljava/lang/String;

    .line 764
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 4

    .prologue
    .line 530
    sget-object v1, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 531
    :try_start_0
    sget-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/FileProvider$PathStrategy;

    .line 532
    if-eqz v0, :cond_0

    .line 544
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    return-object v0

    .line 534
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 542
    :try_start_2
    sget-object v2, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 541
    :catch_0
    move-exception v0

    .line 536
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 539
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 376
    invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    .line 377
    invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .locals 3

    .prologue
    const-string/jumbo v0, "r"

    .line 729
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "w"

    .line 731
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/high16 v0, 0x2c000000

    .line 749
    :goto_0
    return v0

    :cond_1
    const/high16 v0, 0x10000000

    .line 730
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "wt"

    .line 731
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wa"

    .line 735
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "rw"

    .line 739
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "rwt"

    .line 742
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/high16 v0, 0x2a000000

    .line 736
    goto :goto_0

    :cond_4
    const/high16 v0, 0x38000000

    .line 740
    goto :goto_0

    :cond_5
    const/high16 v0, 0x3c000000    # 0.0078125f

    .line 743
    goto :goto_0
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 556
    new-instance v2, Landroid/support/v4/content/FileProvider$SimplePathStrategy;

    invoke-direct {v2, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 562
    if-eqz v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 592
    return-object v2

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x2

    .line 569
    if-ne v0, v4, :cond_0

    .line 570
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "name"

    .line 572
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "path"

    .line 573
    invoke-interface {v3, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "root-path"

    .line 576
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "files-path"

    .line 578
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "cache-path"

    .line 580
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "external-path"

    .line 582
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 586
    :goto_1
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v2, v4, v0}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 577
    :cond_3
    sget-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    new-array v6, v8, [Ljava/lang/String;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/String;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 581
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/String;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 583
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/String;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 345
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    .line 348
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    .line 353
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 497
    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 454
    if-gez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "application/octet-stream"

    .line 462
    return-object v0

    .line 455
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 520
    invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    .line 521
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;

    invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 414
    if-eqz p2, :cond_0

    .line 418
    :goto_0
    array-length v1, p2

    new-array v4, v1, [Ljava/lang/String;

    .line 419
    array-length v1, p2

    new-array v5, v1, [Ljava/lang/Object;

    .line 421
    array-length v6, p2

    move v2, v0

    :goto_1
    if-lt v2, v6, :cond_1

    .line 431
    invoke-static {v4, v0}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v5, v0}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 434
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 435
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 436
    return-object v2

    .line 415
    :cond_0
    sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_1
    aget-object v1, p2, v2

    const-string/jumbo v7, "_display_name"

    .line 422
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "_size"

    .line 425
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 421
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "_display_name"

    .line 423
    aput-object v1, v4, v0

    .line 424
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    move v0, v1

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "_size"

    .line 426
    aput-object v1, v4, v0

    .line 427
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v0

    move v0, v1

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
