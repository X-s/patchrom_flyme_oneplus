.class final Lcom/oneplus/tuner/utillty/DialogUtility$1;
.super Ljava/lang/Object;
.source "DialogUtility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/utillty/DialogUtility;->createPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    instance-of v1, p1, Lcom/oppo/tribune/ui/CheckView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/oppo/tribune/ui/CheckView;

    .line 41
    .local v0, "checkV":Lcom/oppo/tribune/ui/CheckView;
    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CheckView;->toggle()V

    .line 45
    .end local v0    # "checkV":Lcom/oppo/tribune/ui/CheckView;
    :cond_0
    return-void
.end method
