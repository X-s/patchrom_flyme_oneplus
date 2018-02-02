.class Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# static fields
.field static accessibilityDelegateCheckFailed:Z

.field static mAccessibilityDelegateField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 990
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 991
    if-eqz v0, :cond_1

    .line 995
    :goto_1
    return-object v0

    .line 987
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    goto :goto_0

    .line 992
    :cond_1
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 993
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 936
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 940
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 963
    sget-boolean v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    if-nez v2, :cond_0

    .line 966
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 977
    :goto_0
    :try_start_0
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 964
    :cond_0
    return v0

    :cond_1
    :try_start_1
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mAccessibilityDelegate"

    .line 968
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 970
    sget-object v2, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v2

    .line 972
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    .line 973
    return v0

    :cond_2
    move v0, v1

    .line 977
    goto :goto_1

    :catch_1
    move-exception v2

    .line 979
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    .line 980
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 948
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 949
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    .line 953
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 944
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 945
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 957
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    .line 959
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1000
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 1001
    return-void
.end method
