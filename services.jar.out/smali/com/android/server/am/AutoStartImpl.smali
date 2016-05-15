.class public Lcom/android/server/am/AutoStartImpl;
.super Ljava/lang/Object;
.source "AutoStartImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final NODE_NAME:Ljava/lang/String; = "forbidboot"

.field static final TAG:Ljava/lang/String; = "Service"


# instance fields
.field private mCon:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "con"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AutoStartImpl;->mCon:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/android/server/am/AutoStartImpl;->mCon:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private convertToList(Ljava/util/Set;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "p_objSrc":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "p_objDest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "p_objDest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .restart local p2    # "p_objDest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 81
    .local v1, "objTemp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 82
    aget-object v2, v1, v0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private dealAutoStart(Lcom/android/server/am/ApkInfo;Ljava/util/Set;)V
    .locals 4
    .param p1, "p_objApkInfo"    # Lcom/android/server/am/ApkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ApkInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "objList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "objList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 54
    .restart local p2    # "objList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ApkInfo;->isForbid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/android/server/am/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 60
    .local v1, "obj2":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/server/am/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p1}, Lcom/android/server/am/ApkInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readFormFile(Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 2
    .param p1, "p_objSPF"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, "objDefList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "forbidboot"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public readFromFile()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/server/am/AutoStartImpl;->mCon:Landroid/content/Context;

    const-string v3, "autostartlist"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "pref":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "objList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/android/server/am/AutoStartImpl;->readFormFile(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/AutoStartImpl;->convertToList(Ljava/util/Set;Ljava/util/List;)V

    .line 74
    return-object v0
.end method

.method public writeToFile(Lcom/android/server/am/ApkInfo;)Z
    .locals 6
    .param p1, "p_objApkInfo"    # Lcom/android/server/am/ApkInfo;

    .prologue
    .line 32
    iget-object v3, p0, Lcom/android/server/am/AutoStartImpl;->mCon:Landroid/content/Context;

    const-string v4, "autostartlist"

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    .local v2, "spf":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v2}, Lcom/android/server/am/AutoStartImpl;->readFormFile(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object v1

    .line 37
    .local v1, "obj":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "forbidboot"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/AutoStartImpl;->dealAutoStart(Lcom/android/server/am/ApkInfo;Ljava/util/Set;)V

    .line 41
    const-string v3, "forbidboot"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    return v3
.end method
