.class Lcom/oneplus/tuner/fragment/AlertDialogFragment$4;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$4;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    :try_start_0
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v5, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$4;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$000(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v2

    .line 122
    .local v2, "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "earphone":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-string v5, ""

    if-ne v5, v1, :cond_0

    const-string v1, "default"

    .end local v1    # "earphone":Ljava/lang/String;
    :cond_0
    iput-object v1, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 126
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-nez v2, :cond_1

    const-string v4, "default"

    :goto_0
    iput-object v4, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 128
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 130
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v5, -0x1

    iput v5, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 131
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v5, 0x1

    iput v5, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 132
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-string v5, ""

    iput-object v5, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 133
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v5, 0x0

    iput v5, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 134
    new-instance v3, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    .line 135
    .local v3, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 136
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/oneplus/tuner/providers/SoundEffectDao;->insert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    .end local v3    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    return-void

    .line 126
    .restart local v2    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 138
    .end local v2    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
