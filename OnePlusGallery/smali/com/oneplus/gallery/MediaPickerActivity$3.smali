.class Lcom/oneplus/gallery/MediaPickerActivity$3;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaPickerActivity;
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
.field final synthetic this$0:Lcom/oneplus/gallery/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/gallery/MediaPickerActivity$3;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

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
    .line 95
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity$3;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    # invokes: Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewConfirmClicked(Lcom/oneplus/base/EventArgs;)V
    invoke-static {v0, p3}, Lcom/oneplus/gallery/MediaPickerActivity;->access$200(Lcom/oneplus/gallery/MediaPickerActivity;Lcom/oneplus/base/EventArgs;)V

    .line 96
    return-void
.end method
