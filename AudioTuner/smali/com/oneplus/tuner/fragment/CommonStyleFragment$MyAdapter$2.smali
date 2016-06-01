.class Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;
.super Ljava/lang/Object;
.source "CommonStyleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

.field final synthetic val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->this$1:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    iput-object p2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 203
    const-string v1, "shuqi"

    const-string v2, "holder.info onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->this$1:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    # getter for: Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->access$100(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sound_effect"

    new-instance v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v2, v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    const-string v1, "isfromlocal_list"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string v1, "shuqi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pass, item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->val$bean:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>(Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;->this$1:Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    # getter for: Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->access$100(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method
