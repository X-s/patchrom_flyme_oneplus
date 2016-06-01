.class public Lcom/oneplus/tuner/ShareActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/tuner/base/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener",
        "<",
        "Lcom/oppo/tribune/protobuf/info/SubmitResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CHART_COUNT:I = 0x1c

.field private static final REQUEST_CODE:I = 0x65

.field private static final REQUEST_CODE_PICK_HEADSET:I = 0x64


# instance fields
.field AllConfigLinearLayout:Landroid/widget/LinearLayout;

.field SelectEarphoneLinearLayout:Landroid/widget/LinearLayout;

.field SelectEffectLabelLinearLayout:Landroid/widget/LinearLayout;

.field mCancelShareButton:Landroid/widget/Button;

.field private mCategoryId:I

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurrentEarPhone:Landroid/widget/TextView;

.field private mEarPhoneType:Ljava/lang/String;

.field private mEarPhoneTypeId:J

.field private mEffectcategory:Landroid/widget/TextView;

.field mFillIntroductionEditor:Landroid/widget/EditText;

.field private mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field private mLocalResultFlag:Z

.field private mNameResId:[I

.field mNameingEditor:Landroid/widget/EditText;

.field private mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

.field mRealShareButton:Landroid/widget/Button;

.field private mSubmitFeedModel:Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

.field testOnePlusAccount:Landroid/widget/TextView;

.field testOnePlusToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mNameResId:[I

    .line 506
    return-void

    .line 76
    :array_0
    .array-data 4
        0x7f0c0550
        0x7f0c0551
        0x7f0c0552
        0x7f0c0553
        0x7f0c0554
        0x7f0c0555
        0x7f0c0556
        0x7f0c0557
        0x7f0c0558
    .end array-data
.end method

.method private doPost(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "introduction"    # Ljava/lang/String;
    .param p3, "categoryId"    # I

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/tribune/util/Utils;->isNetWorkActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06f0

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/tuner/ShareActivity;->mIsSuccessLogin:Z

    if-nez v1, :cond_2

    .line 442
    iget-boolean v1, p0, Lcom/oneplus/tuner/ShareActivity;->mLocalResultFlag:Z

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0c06e2

    invoke-static {v1, v2, v3}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mSubmitFeedModel:Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "cbt"

    const-string v2, "startSubmitTask"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;

    iget-wide v2, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneTypeId:J

    long-to-int v1, v2

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-static {v2}, Lcom/oneplus/tuner/utillty/Utilities;->combineEffects(Lcom/oneplus/tuner/providers/SoundEffectItem;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    .local v0, "info":Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mSubmitFeedModel:Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;->startSubmitTask(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getCategory(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mNameResId:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveEffect()V
    .locals 7

    .prologue
    .line 395
    :try_start_0
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 397
    invoke-static {}, Lcom/oppo/tribune/CommunityApplication;->readUserInfoInDataBase()Lcom/oppo/tribune/protobuf/info/UserInfo;

    move-result-object v1

    .line 401
    .local v1, "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-string v3, ""

    iget-object v5, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    if-ne v3, v5, :cond_1

    const-string v3, "default"

    :goto_0
    iput-object v3, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 403
    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-nez v1, :cond_2

    const-string v3, "default"

    :goto_1
    iput-object v3, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 405
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 407
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v4, -0x1

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 408
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v4, 0x1

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 409
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v4, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 410
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v4, 0x0

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 412
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v4, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    .line 413
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v4, -0x2

    iput v4, v3, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 418
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v3, v4}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 419
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/oneplus/tuner/providers/SoundEffectDao;->insert(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .line 422
    .local v2, "resultFlag":Z
    if-eqz v2, :cond_0

    .line 423
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 425
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    .line 435
    .end local v1    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    .end local v2    # "resultFlag":Z
    :cond_0
    :goto_2
    return-void

    .line 401
    .restart local v1    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    :cond_1
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {v1}, Lcom/oppo/tribune/protobuf/info/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 426
    .restart local v2    # "resultFlag":Z
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/tuner/ShareActivity;->mIsSuccessLogin:Z

    if-nez v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c05a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 428
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/tuner/ShareActivity;->mLocalResultFlag:Z

    .line 429
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 432
    .end local v1    # "info":Lcom/oppo/tribune/protobuf/info/UserInfo;
    .end local v2    # "resultFlag":Z
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setCallback()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/tuner/ShareActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/ShareActivity$3;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/oneplus/tuner/ShareActivity$4;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/ShareActivity$4;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 212
    return-void
.end method

.method private startPost()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 366
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c06c1

    invoke-static {v3, v4, v5}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "introduction":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c06c3

    invoke-static {v3, v4, v5}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mEffectcategory:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "typeName":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c06c2

    invoke-static {v3, v4, v5}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/tuner/ShareActivity;->saveEffect()V

    .line 387
    iget-object v3, p0, Lcom/oneplus/tuner/ShareActivity;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    iget v3, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    invoke-direct {p0, v1, v0, v3}, Lcom/oneplus/tuner/ShareActivity;->doPost(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/ShareActivity;->mIsSlideMenuEnable:Z

    .line 488
    iput-object p0, p0, Lcom/oneplus/tuner/ShareActivity;->mActivity:Landroid/app/Activity;

    .line 489
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/ShareActivity;->mIsTitlebarMenuEnable:Z

    .line 494
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method protected getPostMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 478
    .local v0, "edit":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    .end local v0    # "edit":Landroid/text/Editable;
    :cond_0
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x65

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/tuner/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    if-nez p2, :cond_1

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    if-eqz p3, :cond_0

    .line 221
    const-string v1, "earphone_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    .line 223
    const-string v1, "earphone_type_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneTypeId:J

    .line 225
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCurrentEarPhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mReloadHeadsetConfigListener:Lcom/oneplus/tuner/base/BaseActivity$ReloadHeadsetConfigLsn;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 233
    :cond_1
    if-ne p2, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 234
    if-eqz p3, :cond_0

    .line 235
    const-string v1, "category"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "typeName":Ljava/lang/String;
    const-string v1, "category_id"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    .line 237
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mEffectcategory:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelSumbit()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/tuner/ShareActivity;->startPost()V

    .line 258
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/SpecialStatistics;->packPostNew(Landroid/content/Context;)V

    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->warnToBack()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01da
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f030067

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->setContent(I)V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c066e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    iput-object p0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    .line 96
    new-instance v1, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

    invoke-direct {v1}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;-><init>()V

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mSubmitFeedModel:Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

    .line 97
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mSubmitFeedModel:Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;

    invoke-virtual {v1, p0}, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedModel;->setSubmitInfoListener(Lcom/oppo/tribune/packshow/parse/SubmitInfoModel$SubmitInfoListener;)V

    .line 98
    const v1, 0x7f0b01da

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mRealShareButton:Landroid/widget/Button;

    .line 99
    const v1, 0x7f0b01db

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCancelShareButton:Landroid/widget/Button;

    .line 100
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mRealShareButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCancelShareButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0b01d6

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    .line 103
    const v1, 0x7f0b01d8

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f0b01d3

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->AllConfigLinearLayout:Landroid/widget/LinearLayout;

    .line 106
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->AllConfigLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/oneplus/tuner/ShareActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/ShareActivity$1;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f0b01d4

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mEffectcategory:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0b01d9

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCheckbox:Landroid/widget/CheckBox;

    .line 119
    const v1, 0x7f0b01d2

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->SelectEarphoneLinearLayout:Landroid/widget/LinearLayout;

    .line 120
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->SelectEarphoneLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/oneplus/tuner/ShareActivity$2;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/ShareActivity$2;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCurrentEarPhone:Landroid/widget/TextView;

    .line 135
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneTypeId:J

    .line 137
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCurrentEarPhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mEarPhoneType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 140
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 141
    invoke-direct {p0}, Lcom/oneplus/tuner/ShareActivity;->setCallback()V

    .line 143
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/oneplus/tuner/ShareActivity$NameLengthFilter;-><init>(Lcom/oneplus/tuner/ShareActivity;I)V

    aput-object v1, v0, v4

    .line 144
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    .line 147
    iget v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    if-ne v1, v5, :cond_0

    .line 148
    const/4 v1, 0x2

    iput v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    .line 150
    :cond_0
    iget v1, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    if-lez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mEffectcategory:Landroid/widget/TextView;

    iget v2, p0, Lcom/oneplus/tuner/ShareActivity;->mCategoryId:I

    invoke-direct {p0, v2}, Lcom/oneplus/tuner/ShareActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    return-void
.end method

.method public onFinishSumbit(Lcom/oppo/tribune/protobuf/info/SubmitResult;)V
    .locals 10
    .param p1, "result"    # Lcom/oppo/tribune/protobuf/info/SubmitResult;

    .prologue
    const/4 v4, -0x2

    const/4 v9, 0x0

    .line 305
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->dismiss()V

    .line 306
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mRealShareButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 307
    if-nez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c05fb

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->getRet()I

    move-result v8

    .line 313
    .local v8, "ret":I
    if-nez v8, :cond_3

    .line 314
    invoke-virtual {p1}, Lcom/oppo/tribune/protobuf/info/SubmitResult;->getConfigId()I

    move-result v6

    .line 316
    .local v6, "config_id":I
    const-string v0, "diaodiao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    if-ne v0, v4, :cond_1

    .line 319
    :try_start_0
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 325
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iput v6, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mShareId:I

    .line 327
    :try_start_1
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, p0, Lcom/oneplus/tuner/ShareActivity;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e1

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v7

    .line 321
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 328
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 329
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 336
    .end local v6    # "config_id":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e2

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 339
    :cond_4
    const/4 v0, 0x2

    if-ne v8, v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e4

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 342
    :cond_5
    const/4 v0, 0x4

    if-ne v8, v0, :cond_6

    .line 343
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e6

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 345
    :cond_6
    const/4 v0, 0x5

    if-ne v8, v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e7

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 348
    :cond_7
    const/4 v0, 0x6

    if-ne v8, v0, :cond_8

    .line 349
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e8

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 351
    :cond_8
    const/4 v0, 0x3

    if-ne v8, v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06e5

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 354
    :cond_9
    if-ne v8, v4, :cond_a

    .line 355
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0621

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 357
    :cond_a
    const/4 v0, -0x3

    if-ne v8, v0, :cond_b

    .line 358
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0622

    invoke-static {v0, v1, v9}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 361
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onFinishSumbit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lcom/oppo/tribune/protobuf/info/SubmitResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/ShareActivity;->onFinishSumbit(Lcom/oppo/tribune/protobuf/info/SubmitResult;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreSumbit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->createDialog(Landroid/content/Context;)Lcom/oppo/tribune/ui/CustomProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 272
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    const v1, 0x7f0c06e9

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setMessage(I)Lcom/oppo/tribune/ui/CustomProgressDialog;

    .line 273
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/ui/CustomProgressDialog;->setCancelable(Z)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mProDialog:Lcom/oppo/tribune/ui/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomProgressDialog;->show()V

    .line 275
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mRealShareButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 276
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 285
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onStart()V

    .line 287
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity;->mNameingEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 289
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 290
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/oneplus/tuner/ShareActivity$5;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/ShareActivity$5;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 300
    return-void
.end method

.method protected warnToBack()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity;->mFillIntroductionEditor:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/oppo/tribune/util/CommonMethods;->hideSoftKeyboard(Landroid/view/View;)V

    .line 458
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->getPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/tribune/util/CommonMethods;->isVisibilityStr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c06ea

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setTitle(I)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c06eb

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setMessage(I)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c06ec

    new-instance v2, Lcom/oneplus/tuner/ShareActivity$6;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/ShareActivity$6;-><init>(Lcom/oneplus/tuner/ShareActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c066f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/CustomAlertDialog$Builder;->show()Lcom/oppo/tribune/ui/CustomAlertDialog;

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    goto :goto_0
.end method
