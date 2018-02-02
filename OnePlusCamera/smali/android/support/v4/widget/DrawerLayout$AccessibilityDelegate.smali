.class Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 1825
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 1826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private addChildrenForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1900
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1901
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1907
    return-void

    .line 1902
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1903
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->access$400(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1901
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1904
    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    goto :goto_1
.end method

.method private copyNodeInfoNoChildren(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    .line 1918
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1919
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1921
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1922
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1924
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1925
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1926
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1927
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1930
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1931
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1932
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 1933
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 1934
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1935
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 1937
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1938
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 1873
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1887
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1874
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1875
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->access$300(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 1876
    if-nez v1, :cond_2

    .line 1884
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1877
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v1

    .line 1878
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1879
    if-eqz v1, :cond_1

    .line 1880
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1861
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    .line 1863
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1864
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1830
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 1837
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1839
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    .line 1840
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 1841
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_1

    .line 1844
    :goto_0
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1845
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1847
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->addChildrenForAccessibility(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V

    :goto_1
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    .line 1850
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1855
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1856
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 1857
    return-void

    .line 1831
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_1

    .line 1842
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1893
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1894
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1893
    :cond_1
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->access$400(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1896
    return v1
.end method
