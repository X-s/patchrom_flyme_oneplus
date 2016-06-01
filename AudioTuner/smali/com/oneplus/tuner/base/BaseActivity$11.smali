.class Lcom/oneplus/tuner/base/BaseActivity$11;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/BaseActivity;->configTitlebar()V
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
    .line 811
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$11;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$11;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-boolean v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->mIsSlideMenuEnable:Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$11;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/tuner/base/BaseActivity;->mDrawerLayout:Lcom/oneplus/tuner/view/OnePlusDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->openDrawer(I)V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/base/BaseActivity$11;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/base/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method
