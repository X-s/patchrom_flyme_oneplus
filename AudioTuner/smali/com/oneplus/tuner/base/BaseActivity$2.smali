.class Lcom/oneplus/tuner/base/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/BaseActivity;->findSlideMenuViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$2;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$2;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v1, v1, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 471
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$2;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/tuner/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    return-void
.end method
