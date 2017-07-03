.class Lcom/oneplus/gallery2/MediaPickerActivity$5;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaPickerActivity$5;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity$5;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    # invokes: Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewClosed()V
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaPickerActivity;->access$400(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    .line 121
    return-void
.end method
