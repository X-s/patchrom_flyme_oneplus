.class Lcom/oneplus/camera/ui/TutorialUI$4;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/TutorialUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$4;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$4;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap9(Lcom/oneplus/camera/ui/TutorialUI;)V

    .line 132
    return-void
.end method
