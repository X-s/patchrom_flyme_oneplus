.class Lcom/oneplus/gallery/SingleMediaActivity$1;
.super Ljava/lang/Object;
.source "SingleMediaActivity.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/SingleMediaActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/SingleMediaActivity;

.field final synthetic val$callMediaObtainedDelayed:[Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/SingleMediaActivity;[Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    iput-object p2, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->val$callMediaObtainedDelayed:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 96
    sget-object v1, Lcom/oneplus/gallery/SingleMediaActivity$3;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    sget-object v2, Lcom/oneplus/base/BaseActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/SingleMediaActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 107
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    # setter for: Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;
    invoke-static {v0, p3}, Lcom/oneplus/gallery/SingleMediaActivity;->access$002(Lcom/oneplus/gallery/SingleMediaActivity;Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/Media;

    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    invoke-virtual {v0, p3}, Lcom/oneplus/gallery/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery/media/Media;)V

    .line 111
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    # setter for: Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;
    invoke-static {v0, p3}, Lcom/oneplus/gallery/SingleMediaActivity;->access$002(Lcom/oneplus/gallery/SingleMediaActivity;Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/Media;

    .line 100
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->val$callMediaObtainedDelayed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity$1;->this$0:Lcom/oneplus/gallery/SingleMediaActivity;

    # getter for: Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/SingleMediaActivity;->access$100(Lcom/oneplus/gallery/SingleMediaActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onObtained() - Activity is destroying or destroyed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
