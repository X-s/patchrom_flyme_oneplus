.class final Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->animateChange(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static final DURATION:J = 0xfaL


# instance fields
.field final synthetic val$beforeBottom:I

.field final synthetic val$content:Landroid/view/View;

.field final synthetic val$detailGroup:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/view/View;IZLandroid/view/View;)V
    .locals 0
    .param p1, "val$content"    # Landroid/view/View;
    .param p2, "val$beforeBottom"    # I
    .param p3, "val$visible"    # Z
    .param p4, "val$detailGroup"    # Landroid/view/View;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$content:Landroid/view/View;

    iput p2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$beforeBottom:I

    iput-boolean p3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$visible:Z

    iput-object p4, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$detailGroup:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$content:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 158
    .local v0, "afterBottom":I
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$content:Landroid/view/View;

    const-string/jumbo v3, "bottom"

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 160
    iget v5, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$beforeBottom:I

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 159
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 161
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    new-instance v2, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3$1;

    iget-boolean v3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$visible:Z

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;->val$detailGroup:Landroid/view/View;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3$1;-><init>(Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$3;ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 156
    return-void
.end method
