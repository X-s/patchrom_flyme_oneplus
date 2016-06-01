.class public Lcom/oneplus/tuner/utillty/DialogUtility;
.super Ljava/lang/Object;
.source "DialogUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-object v4

    .line 26
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 29
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030031

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 31
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0b012b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/CheckView;

    .line 33
    .local v1, "check":Lcom/oppo/tribune/ui/CheckView;
    new-instance v4, Lcom/oneplus/tuner/utillty/DialogUtility$1;

    invoke-direct {v4}, Lcom/oneplus/tuner/utillty/DialogUtility$1;-><init>()V

    invoke-virtual {v1, v4}, Lcom/oppo/tribune/ui/CheckView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v0, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "builder":Lcom/oneplus/uc/UcAlertDialog$Builder;
    const v4, 0x7f0c05ab

    invoke-virtual {v0, v4}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setTitle(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 53
    const v4, 0x7f0c05b1

    new-instance v5, Lcom/oneplus/tuner/utillty/DialogUtility$2;

    invoke-direct {v5}, Lcom/oneplus/tuner/utillty/DialogUtility$2;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 65
    const v4, 0x7f0c05b0

    new-instance v5, Lcom/oneplus/tuner/utillty/DialogUtility$3;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/utillty/DialogUtility$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 80
    invoke-virtual {v0, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method public static createRejectPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-object v3

    .line 92
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 95
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030030

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "builder":Lcom/oneplus/uc/UcAlertDialog$Builder;
    const v3, 0x7f0c05ad

    invoke-virtual {v0, v3}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setTitle(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 102
    const v3, 0x7f0c05b1

    new-instance v4, Lcom/oneplus/tuner/utillty/DialogUtility$4;

    invoke-direct {v4}, Lcom/oneplus/tuner/utillty/DialogUtility$4;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 114
    const v3, 0x7f0c05b0

    new-instance v4, Lcom/oneplus/tuner/utillty/DialogUtility$5;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/utillty/DialogUtility$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 129
    invoke-virtual {v0, v2}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v3

    goto :goto_0
.end method
