.class Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/PreviewPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewPagerAdapter;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/PreviewPagerAdapter;Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewPagerAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings_ex/PreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewPagerAdapter;->-get0(Lcom/android/settings_ex/PreviewPagerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/PreviewPagerAdapter;->-set0(Lcom/android/settings_ex/PreviewPagerAdapter;I)I

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewPagerAdapter;->-wrap0(Lcom/android/settings_ex/PreviewPagerAdapter;)V

    .line 181
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/PreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewPagerAdapter;->-get0(Lcom/android/settings_ex/PreviewPagerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/PreviewPagerAdapter;->-set0(Lcom/android/settings_ex/PreviewPagerAdapter;I)I

    .line 177
    return-void
.end method
