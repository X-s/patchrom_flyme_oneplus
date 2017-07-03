.class public Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;
.super Ljava/lang/Object;
.source "OpAlertDialogBuilderCreater.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private m_Builder:Ljava/lang/Object;

.field private m_Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Context:Landroid/content/Context;

    .line 24
    :try_start_0
    const-string v3, "com.oneplus.app.OPAlertDialog$Builder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 25
    .local v1, "opAlertDialogBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 26
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Context:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "opAlertDialogBuilderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v2

    .line 30
    .local v2, "tr":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    const-string v4, "OpAlertDialogBuilder() - failed to get OPAlertDialog."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->hasBuilder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 96
    .local v1, "dialog":Landroid/app/Dialog;
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "create"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "tr":Ljava/lang/Throwable;
    sget-object v4, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    const-string v5, "create() - failed to create."

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hasBuilder()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->hasBuilder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPositiveButton"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/DialogInterface$OnClickListener;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    const-string v3, "setTitle() - failed to setPositiveButton."

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 7
    .param p1, "titleId"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->hasBuilder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setTitle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    const-string v3, "setTitle() - failed to setTitle."

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setView(I)V
    .locals 7
    .param p1, "layoutResId"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->hasBuilder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setView"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->m_Builder:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "tr":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/gallery/widget/OpAlertDialogBuilderCreater;->TAG:Ljava/lang/String;

    const-string v3, "setTitle() - failed to setView."

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
