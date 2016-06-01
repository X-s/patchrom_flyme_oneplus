.class Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;
.super Ljava/lang/Object;
.source "TabFragmentViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->addTabs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;I)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    iput p2, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    iget-object v0, v0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mOnTabChangeListener:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;->this$0:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;

    iget-object v0, v0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost;->mOnTabChangeListener:Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;

    iget v1, p0, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$1;->val$index:I

    invoke-interface {v0, v1}, Lcom/oneplus/tuner/base/TabFragmentViewPager$MyTabHost$OnTabChangeListener;->onTabChanged(I)V

    .line 358
    :cond_0
    return-void
.end method
