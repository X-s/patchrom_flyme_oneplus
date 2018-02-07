.class Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "OPProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->sendAccessibilityEvent(I)V

    .line 1887
    return-void
.end method
