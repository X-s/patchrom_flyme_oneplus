.class Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/oneplus/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/widget/oneplus/ProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/widget/oneplus/ProgressBar;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/widget/oneplus/ProgressBar;Lcom/android/widget/oneplus/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/widget/oneplus/ProgressBar;
    .param p2, "x1"    # Lcom/android/widget/oneplus/ProgressBar$1;

    .prologue
    .line 2007
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;-><init>(Lcom/android/widget/oneplus/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/widget/oneplus/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/widget/oneplus/ProgressBar;->sendAccessibilityEvent(I)V

    .line 2010
    return-void
.end method
