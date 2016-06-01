.class public Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MyConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/MyConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandableAdapter"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field mClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/oneplus/tuner/MyConfigActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/MyConfigActivity;Landroid/app/Activity;)V
    .locals 1
    .param p2, "a"    # Landroid/app/Activity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 282
    new-instance v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter$1;-><init>(Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 123
    iput-object p2, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->activity:Landroid/app/Activity;

    .line 124
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 137
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 151
    if-nez p4, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/tuner/MyConfigActivity;->access$100(Lcom/oneplus/tuner/MyConfigActivity;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f03001f

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 156
    :cond_0
    const v18, 0x7f0b009e

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSelected(Z)V

    .line 159
    const/4 v4, 0x0

    .line 161
    .local v4, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    if-nez p1, :cond_2

    .line 162
    sget-object v18, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v4, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 167
    .restart local v4    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :goto_0
    const v18, 0x7f0b00a9

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 169
    .local v14, "mRlUse":Landroid/widget/RelativeLayout;
    const v18, 0x7f0b00b5

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 171
    .local v11, "mRlDelete":Landroid/widget/RelativeLayout;
    const v18, 0x7f0b00ad

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 173
    .local v12, "mRlModify":Landroid/widget/RelativeLayout;
    const v18, 0x7f0b00b1

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 175
    .local v13, "mRlRename":Landroid/widget/RelativeLayout;
    const v18, 0x7f0b00b0

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 177
    .local v8, "mModifyImg":Landroid/widget/ImageView;
    const v18, 0x7f0b00b4

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 180
    .local v10, "mRenameImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v12, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v13, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 191
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 192
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_1
    const v18, 0x7f0b00a8

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 205
    .local v17, "v":Landroid/view/View;
    iget-boolean v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 206
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v18, 0x7f0b00a3

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/oneplus/tuner/MyConfigActivity;->mExpandedItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v0, v4}, Lcom/oneplus/tuner/MyConfigActivity;->access$002(Lcom/oneplus/tuner/MyConfigActivity;Lcom/oneplus/tuner/providers/SoundEffectItem;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 216
    :goto_2
    iget v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 217
    const v18, 0x7f0b009e

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSelected(Z)V

    .line 220
    :cond_1
    const v18, 0x7f0b00a0

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 222
    .local v7, "mEarphone":Landroid/widget/TextView;
    const v18, 0x7f0b00a1

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 224
    .local v6, "mConfig":Landroid/widget/TextView;
    const v18, 0x7f0b00a3

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 226
    .local v5, "mCommentInfo":Landroid/widget/TextView;
    const v18, 0x7f0b00a5

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 228
    .local v9, "mNum":Landroid/widget/TextView;
    const v18, 0x7f0b00a6

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 229
    .local v15, "mTime":Landroid/widget/TextView;
    const v18, 0x7f0b00a7

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 232
    .local v16, "mUsername":Landroid/widget/TextView;
    iget-object v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-wide v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/oppo/tribune/tool/TimeUtil;->getTime(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, v4, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-object p4

    .line 164
    .end local v5    # "mCommentInfo":Landroid/widget/TextView;
    .end local v6    # "mConfig":Landroid/widget/TextView;
    .end local v7    # "mEarphone":Landroid/widget/TextView;
    .end local v8    # "mModifyImg":Landroid/widget/ImageView;
    .end local v9    # "mNum":Landroid/widget/TextView;
    .end local v10    # "mRenameImg":Landroid/widget/ImageView;
    .end local v11    # "mRlDelete":Landroid/widget/RelativeLayout;
    .end local v12    # "mRlModify":Landroid/widget/RelativeLayout;
    .end local v13    # "mRlRename":Landroid/widget/RelativeLayout;
    .end local v14    # "mRlUse":Landroid/widget/RelativeLayout;
    .end local v15    # "mTime":Landroid/widget/TextView;
    .end local v16    # "mUsername":Landroid/widget/TextView;
    .end local v17    # "v":Landroid/view/View;
    :cond_2
    sget-object v18, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    check-cast v4, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .restart local v4    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    goto/16 :goto_0

    .line 197
    .restart local v8    # "mModifyImg":Landroid/widget/ImageView;
    .restart local v10    # "mRenameImg":Landroid/widget/ImageView;
    .restart local v11    # "mRlDelete":Landroid/widget/RelativeLayout;
    .restart local v12    # "mRlModify":Landroid/widget/RelativeLayout;
    .restart local v13    # "mRlRename":Landroid/widget/RelativeLayout;
    .restart local v14    # "mRlUse":Landroid/widget/RelativeLayout;
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 211
    .restart local v17    # "v":Landroid/view/View;
    :cond_4
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v18, 0x7f0b00a3

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/tuner/MyConfigActivity;->access$200(Lcom/oneplus/tuner/MyConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/tuner/MyConfigActivity;->access$200(Lcom/oneplus/tuner/MyConfigActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    if-nez p3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/oneplus/tuner/MyConfigActivity;->access$100(Lcom/oneplus/tuner/MyConfigActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 260
    :cond_0
    const v3, 0x7f0b0153

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, "group":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/oneplus/tuner/MyConfigActivity$ExpandableAdapter;->this$0:Lcom/oneplus/tuner/MyConfigActivity;

    # getter for: Lcom/oneplus/tuner/MyConfigActivity;->groupArray:Ljava/util/List;
    invoke-static {v3}, Lcom/oneplus/tuner/MyConfigActivity;->access$200(Lcom/oneplus/tuner/MyConfigActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v3, 0x7f0b0154

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 265
    .local v1, "indicator":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 266
    const v3, 0x7f02009c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 271
    :goto_0
    return-object p3

    .line 268
    :cond_1
    const v3, 0x7f02009b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method
