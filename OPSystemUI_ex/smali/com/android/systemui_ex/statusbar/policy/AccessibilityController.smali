.class public Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
    }
.end annotation


# instance fields
.field private mAccessibilityEnabled:Z

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 37
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 39
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 41
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    .line 42
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    .line 43
    return-void
.end method

.method private fireChanged()V
    .locals 5

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 70
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    .line 62
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    .line 78
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->fireChanged()V

    .line 79
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    .line 84
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->fireChanged()V

    .line 85
    return-void
.end method
