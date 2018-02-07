.class Lcom/oneplus/settings/product/ProductInfoActivity$1;
.super Ljava/lang/Object;
.source "ProductInfoActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/product/ProductInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/product/ProductInfoActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/product/ProductInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/product/ProductInfoActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/settings/product/ProductInfoActivity$1;->this$0:Lcom/oneplus/settings/product/ProductInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/product/ProductInfoActivity$1;->this$0:Lcom/oneplus/settings/product/ProductInfoActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/product/ProductInfoActivity;->-wrap0(Lcom/oneplus/settings/product/ProductInfoActivity;I)V

    .line 84
    return-void
.end method
