.class final Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/widget/SlidingTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/SlidingTabLayout;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SlidingTabLayout;Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/SlidingTabLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/settings_ex/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 170
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-get0(Lcom/android/settings_ex/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 163
    .local v0, "titleCount":I
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 163
    :cond_1
    if-ge p1, v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-static {v1, p1, p2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-wrap0(Lcom/android/settings_ex/widget/SlidingTabLayout;IF)V

    .line 161
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-get1(Lcom/android/settings_ex/widget/SlidingTabLayout;)Lcom/android/settings_ex/widget/RtlCompatibleViewPager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p1

    .line 177
    iget v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-wrap0(Lcom/android/settings_ex/widget/SlidingTabLayout;IF)V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-get0(Lcom/android/settings_ex/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 181
    .local v1, "titleCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/settings_ex/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings_ex/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings_ex/widget/SlidingTabLayout;->-get0(Lcom/android/settings_ex/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 182
    goto :goto_1

    .line 175
    :cond_2
    return-void
.end method
