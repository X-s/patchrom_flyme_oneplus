.class Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;->-get0(Lcom/android/settings_ex/PreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->sendAccessibilityEvent(I)V

    .line 218
    return-void
.end method
