.class Lcom/oneplus/gallery/MediaPickerActivity$5;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/MediaPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oneplus/gallery/MediaPickerActivity$5;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity$5;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    # invokes: Lcom/oneplus/gallery/MediaPickerActivity;->onGridViewOpened()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaPickerActivity;->access$400(Lcom/oneplus/gallery/MediaPickerActivity;)V

    .line 112
    return-void
.end method
