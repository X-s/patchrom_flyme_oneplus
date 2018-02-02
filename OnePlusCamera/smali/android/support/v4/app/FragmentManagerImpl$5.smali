.class Landroid/support/v4/app/FragmentManagerImpl$5;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1040
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1042
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$5;->val$fragment:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method
