.class public Landroid/content/res/OpThemeResourcesPackage;
.super Landroid/content/res/OpThemeResources;
.source "OpThemeResourcesPackage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpThemeResourcesPackage"

.field private static final sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/OpThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/OpThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/OpThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V
    .locals 1
    .param p1, "themeResourcesPackage"    # Landroid/content/res/OpThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaData"    # Landroid/content/res/OpThemeResources$MetaData;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/OpThemeResources;-><init>(Landroid/content/res/OpThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpThemeResourcesPackage;->DEBUG:Z

    .line 39
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResourcesPackage;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    sget-object v3, Landroid/content/res/OpThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    monitor-enter v3

    .line 45
    :try_start_0
    sget-object v2, Landroid/content/res/OpThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Landroid/content/res/OpThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/res/OpThemeResourcesPackage;

    move-object v1, v0

    .line 50
    :cond_0
    if-nez v1, :cond_1

    .line 51
    invoke-static {p0, p1}, Landroid/content/res/OpThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResourcesPackage;

    move-result-object v1

    .line 52
    sget-object v2, Landroid/content/res/OpThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    monitor-exit v3

    .line 55
    return-object v1

    .line 54
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResourcesPackage;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/content/res/OpThemeResourcesPackage;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 62
    new-instance v2, Landroid/content/res/OpThemeResourcesPackage;

    sget-object v3, Landroid/content/res/OpThemeResourcesPackage;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v2, v1, p0, p1, v3}, Landroid/content/res/OpThemeResourcesPackage;-><init>(Landroid/content/res/OpThemeResourcesPackage;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V

    .line 61
    .end local v1    # "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    .local v2, "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    .end local v2    # "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    .restart local v1    # "themeResourcesPackage":Landroid/content/res/OpThemeResourcesPackage;
    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "res":Ljava/lang/CharSequence;
    invoke-super {p0, p1}, Landroid/content/res/OpThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Landroid/content/res/OpThemeResourcesPackage;->getSystem()Landroid/content/res/OpThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeResourcesSystem;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/content/res/OpThemeResourcesPackage;->getPackageThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected isMutiPackage()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
