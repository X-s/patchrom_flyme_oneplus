.class Lcom/oneplus/tuner/base/BaseActivity$5;
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
    .line 516
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$5;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$5;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->closeDrawer(I)V

    .line 521
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$5;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/oneplus/tuner/OnePlusRecentlyUesdActivity;

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$5;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/tuner/base/BaseActivity$5$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/base/BaseActivity$5$1;-><init>(Lcom/oneplus/tuner/base/BaseActivity$5;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
