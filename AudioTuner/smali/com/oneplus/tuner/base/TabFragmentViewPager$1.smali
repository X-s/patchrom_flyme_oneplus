.class Lcom/oneplus/tuner/base/TabFragmentViewPager$1;
.super Ljava/lang/Object;
.source "TabFragmentViewPager.java"

# interfaces
.implements Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/TabFragmentViewPager;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/TabFragmentViewPager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$1;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(I)V
    .locals 1
    .param p1, "positon"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$1;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager;

    # getter for: Lcom/oneplus/tuner/base/TabFragmentViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/oneplus/tuner/base/TabFragmentViewPager;->access$000(Lcom/oneplus/tuner/base/TabFragmentViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 88
    return-void
.end method
