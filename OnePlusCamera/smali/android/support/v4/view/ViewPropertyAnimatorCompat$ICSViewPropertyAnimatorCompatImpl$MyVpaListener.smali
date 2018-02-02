.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 506
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x7e000000

    .line 547
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 552
    :goto_0
    if-nez v0, :cond_1

    .line 555
    :goto_1
    return-void

    .line 550
    :cond_0
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_0

    .line 553
    :cond_1
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    if-gez v0, :cond_0

    .line 532
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    const/high16 v0, 0x7e000000

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 540
    :goto_2
    if-nez v0, :cond_3

    .line 543
    :goto_3
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$402(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)I

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$000(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 538
    :cond_2
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_2

    .line 541
    :cond_3
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$400(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)I

    move-result v0

    if-gez v0, :cond_0

    .line 513
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    const/high16 v0, 0x7e000000

    .line 516
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 518
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 521
    :goto_2
    if-nez v0, :cond_3

    .line 524
    :goto_3
    return-void

    :cond_0
    const/4 v0, 0x2

    .line 511
    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-static {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->access$100(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 519
    :cond_2
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    goto :goto_2

    .line 522
    :cond_3
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_3
.end method
