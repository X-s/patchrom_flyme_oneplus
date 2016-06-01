.class Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/CommonStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
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

.field final synthetic this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment;Landroid/content/Context;Ljava/util/List;)V
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
    .line 132
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;>;"
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getItemBgPic(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    rem-int/lit8 v1, p1, 0xa

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    goto :goto_0

    .line 285
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 289
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    goto :goto_0

    .line 293
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_7
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    goto :goto_0

    .line 301
    :pswitch_8
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    goto :goto_0

    .line 305
    :pswitch_9
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 267
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
        :pswitch_9
    .end packed-switch
.end method

.method private getItemIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    rem-int/lit8 v1, p1, 0xa

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_0
    return-object v0

    .line 220
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    goto :goto_0

    .line 236
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    goto :goto_0

    .line 240
    :pswitch_5
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    goto :goto_0

    .line 244
    :pswitch_6
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 248
    :pswitch_7
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02014f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 250
    goto :goto_0

    .line 252
    :pswitch_8
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    goto :goto_0

    .line 256
    :pswitch_9
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    goto/16 :goto_0

    .line 218
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
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "holder":Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .line 156
    .local v0, "bean":Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;
    if-nez p2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    new-instance v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;

    .end local v1    # "holder":Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;
    iget-object v2, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->this$0:Lcom/oneplus/tuner/fragment/CommonStyleFragment;

    invoke-direct {v1, v2}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;-><init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment;)V

    .line 160
    .restart local v1    # "holder":Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;
    const v2, 0x7f0b0157

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->parent:Landroid/widget/RelativeLayout;

    .line 162
    const v2, 0x7f0b0061

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 163
    const v2, 0x7f0b0162

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->info:Landroid/widget/ImageView;

    .line 164
    const v2, 0x7f0b0062

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 165
    const v2, 0x7f0b0161

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->summary:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->getItemBgPic(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->getItemIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubjectCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getSubjectCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->parent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_1
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->parent:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$1;-><init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->info:Landroid/widget/ImageView;

    new-instance v3, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter$2;-><init>(Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-object p2

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;
    check-cast v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;

    .restart local v1    # "holder":Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;
    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, v1, Lcom/oneplus/tuner/fragment/CommonStyleFragment$ViewHolder;->parent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/oneplus/tuner/fragment/CommonStyleFragment$MyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
