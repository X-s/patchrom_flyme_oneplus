.class Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPCommonStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonStyleAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getItemBgPic(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    rem-int/lit8 v1, p1, 0x9

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    return-object v0

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    goto :goto_0

    .line 301
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    goto :goto_0

    .line 305
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 307
    goto :goto_0

    .line 309
    :pswitch_7
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 311
    goto :goto_0

    .line 313
    :pswitch_8
    iget-object v1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 315
    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f02019c

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "holder":Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .line 159
    .local v0, "bean":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    if-nez p2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030047

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;

    .end local v1    # "holder":Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-direct {v1, v2}, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment;)V

    .line 163
    .restart local v1    # "holder":Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;
    const v2, 0x7f0b0163

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    .line 165
    const v2, 0x7f0b0167

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    .line 167
    const v2, 0x7f0b0165

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleName:Landroid/widget/TextView;

    .line 169
    const v2, 0x7f0b0166

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleIntro:Landroid/widget/TextView;

    .line 171
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    :goto_0
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->getItemBgPic(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleIntro:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    sget-boolean v2, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v2, :cond_2

    .line 180
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubjectCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :goto_1
    sget-boolean v2, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$1;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :goto_2
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$3;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    return-object p2

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;
    check-cast v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;

    .restart local v1    # "holder":Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;
    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 190
    :cond_2
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStyleInfo:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_4
    iget-object v2, v1, Lcom/oneplus/tuner/OPCommonStyleFragment$ViewHolder;->commonStylePic:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;-><init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
