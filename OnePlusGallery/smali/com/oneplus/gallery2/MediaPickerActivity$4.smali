.class Lcom/oneplus/gallery2/MediaPickerActivity$4;
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
    .line 108
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaPickerActivity$4;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity$4;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaPickerActivity$4;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    # getter for: Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->access$300(Lcom/oneplus/gallery2/MediaPickerActivity;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery2/MediaPickerActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaPickerActivity;->access$302(Lcom/oneplus/gallery2/MediaPickerActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 113
    return-void
.end method
