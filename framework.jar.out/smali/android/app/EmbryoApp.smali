.class public Landroid/app/EmbryoApp;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Landroid/app/IEmbryoApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/EmbryoApp$NullEmbryo;,
        Landroid/app/EmbryoApp$ReflectionHelper;
    }
.end annotation


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "Embryo"

.field private static helper:Landroid/app/EmbryoApp$ReflectionHelper;

.field private static instance:Landroid/app/EmbryoApp;

.field private static isEmbryo:Z


# instance fields
.field private impl:Landroid/app/IEmbryoApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/EmbryoApp;->ENABLE:Z

    .line 35
    new-instance v0, Landroid/app/EmbryoApp$ReflectionHelper;

    invoke-direct {v0}, Landroid/app/EmbryoApp$ReflectionHelper;-><init>()V

    sput-object v0, Landroid/app/EmbryoApp;->helper:Landroid/app/EmbryoApp$ReflectionHelper;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/EmbryoApp;->isEmbryo:Z

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v1, Landroid/app/EmbryoApp;->ENABLE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    new-instance v1, Landroid/app/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Landroid/app/EmbryoApp$NullEmbryo;-><init>(Landroid/app/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    .line 59
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v1, Landroid/app/EmbryoApp;->helper:Landroid/app/EmbryoApp$ReflectionHelper;

    invoke-virtual {v1}, Landroid/app/EmbryoApp$ReflectionHelper;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    :try_start_0
    sget-object v1, Landroid/app/EmbryoApp;->helper:Landroid/app/EmbryoApp$ReflectionHelper;

    invoke-virtual {v1}, Landroid/app/EmbryoApp$ReflectionHelper;->get()Landroid/app/IEmbryoApp;

    move-result-object v1

    iput-object v1, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/app/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Landroid/app/EmbryoApp$NullEmbryo;-><init>(Landroid/app/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Landroid/app/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Landroid/app/EmbryoApp$NullEmbryo;-><init>(Landroid/app/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    goto :goto_0
.end method

.method public static final getInstance()Landroid/app/EmbryoApp;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/app/EmbryoApp;->instance:Landroid/app/EmbryoApp;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/app/EmbryoApp;

    invoke-direct {v0}, Landroid/app/EmbryoApp;-><init>()V

    sput-object v0, Landroid/app/EmbryoApp;->instance:Landroid/app/EmbryoApp;

    .line 42
    :cond_0
    sget-object v0, Landroid/app/EmbryoApp;->instance:Landroid/app/EmbryoApp;

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/app/EmbryoApp;->helper:Landroid/app/EmbryoApp$ReflectionHelper;

    invoke-virtual {v0}, Landroid/app/EmbryoApp$ReflectionHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDataAccessable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "data":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    return v2

    .line 87
    .end local v0    # "data":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static isEmbryo()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Landroid/app/EmbryoApp;->isEmbryo:Z

    return v0
.end method

.method public static setMyself()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/EmbryoApp;->isEmbryo:Z

    .line 49
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    invoke-interface {v0, p1}, Landroid/app/IEmbryoApp;->attach(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 109
    invoke-static {p1}, Landroid/app/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Landroid/app/IEmbryoApp;->checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/app/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    invoke-interface {v0, p1}, Landroid/app/IEmbryoApp;->checkHWUI(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 102
    invoke-static {p1}, Landroid/app/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Landroid/app/IEmbryoApp;->checkMainLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/app/EmbryoApp;->impl:Landroid/app/IEmbryoApp;

    invoke-interface {v0}, Landroid/app/IEmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
