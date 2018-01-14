.class Landroid/app/EmbryoApp$ReflectionHelper;
.super Ljava/lang/Object;
.source "EmbryoApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/EmbryoApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionHelper"
.end annotation


# static fields
.field private static final buildClass:Ljava/lang/String; = "com.oneplus.embryo.BuildVersion"

.field private static final implClass:Ljava/lang/String; = "com.oneplus.embryo.EmbryoAppImpl"

.field private static final path:Ljava/lang/String; = "/system/framework/embryo.jar"


# instance fields
.field private mBuildClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mImplClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mVersionField:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    .line 120
    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    .line 122
    iput-boolean v4, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mEnabled:Z

    .line 123
    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    .line 126
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/system/framework/embryo.jar"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "library":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iput-boolean v4, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mEnabled:Z

    .line 129
    return-void

    .line 133
    :cond_0
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string/jumbo v3, "/system/framework/embryo.jar"

    .line 134
    const-class v5, Landroid/app/EmbryoApp;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 133
    invoke-direct {v2, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 135
    .local v2, "pathClassloader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v3, "com.oneplus.embryo.EmbryoAppImpl"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    .line 136
    const-string/jumbo v3, "com.oneplus.embryo.BuildVersion"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    .line 138
    iget-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mEnabled:Z

    .line 140
    iget-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mBuildClz:Ljava/lang/Class;

    const-string/jumbo v5, "BUILD_TIMESTAMP"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :goto_1
    return-void

    .restart local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :cond_1
    move v3, v4

    .line 138
    goto :goto_0

    .line 141
    .end local v2    # "pathClassloader":Ldalvik/system/PathClassLoader;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Embryo"

    const-string/jumbo v5, "Cannot load embryo library"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v4, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mEnabled:Z

    goto :goto_1
.end method


# virtual methods
.method public get()Landroid/app/IEmbryoApp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x8

    .line 152
    const-string/jumbo v1, "IEmbryoApp::get()"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 153
    iget-object v1, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mImplClz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IEmbryoApp;

    .line 154
    .local v0, "embryo":Landroid/app/IEmbryoApp;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-string/jumbo v1, "N/A"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mVersionField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Error"

    return-object v1
.end method

.method isEnable()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/app/EmbryoApp$ReflectionHelper;->mEnabled:Z

    return v0
.end method
