.class public Lcom/android/settings_ex/utils/LocalClassLoaderContextThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "LocalClassLoaderContextThemeWrapper.java"


# instance fields
.field private mLocalClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;I)V
    .locals 0
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "base"    # Landroid/content/Context;
    .param p3, "themeResId"    # I

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
