.class Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/VerticalViewPager;

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/VerticalViewPager;Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/VerticalViewPager;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->dataSetChanged()V

    .line 2720
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->dataSetChanged()V

    .line 2725
    return-void
.end method
