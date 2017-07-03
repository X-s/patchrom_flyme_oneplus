.class Lcom/oneplus/gallery2/MediaPickerActivity$6;
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
    .line 124
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaPickerActivity$6;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaPickerActivity$6;->this$0:Lcom/oneplus/gallery2/MediaPickerActivity;

    # invokes: Lcom/oneplus/gallery2/MediaPickerActivity;->onGridViewOpened()V
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaPickerActivity;->access$500(Lcom/oneplus/gallery2/MediaPickerActivity;)V

    .line 129
    return-void
.end method
