.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 587
    return-object v0
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    return v0
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 327
    return-object v0
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 650
    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 362
    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 367
    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    return-object v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 627
    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 661
    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 666
    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 682
    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 687
    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 636
    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 692
    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 697
    return v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 377
    return-object v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 617
    return v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 477
    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 382
    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 387
    return-object v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 392
    return-object v0
.end method

.method public getTraversalAfter(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 725
    return-object v0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 712
    return-object v0
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 607
    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 397
    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    return-object v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 292
    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 656
    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 677
    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 734
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method
