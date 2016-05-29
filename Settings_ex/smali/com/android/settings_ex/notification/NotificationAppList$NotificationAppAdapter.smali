.class Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/notification/NotificationAppList$Row;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NotificationAppList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    .line 235
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 236
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 289
    if-eqz p2, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 291
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 294
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method

.method private getSubtitle(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAppList;->access$200(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090ad7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "priString":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->banned:Z

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAppList;->access$200(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .end local v0    # "priString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 346
    .restart local v0    # "priString":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p1, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->priority:Z

    if-nez v1, :cond_0

    .line 347
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NotificationAppList$Row;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NotificationAppList$Row;
    .param p3, "animate"    # Z

    .prologue
    const v6, 0x7f080043

    const/4 v3, 0x0

    .line 299
    instance-of v4, p2, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    if-nez v4, :cond_0

    .line 336
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 306
    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    .line 307
    .local v0, "row":Lcom/android/settings_ex/notification/NotificationAppList$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;

    .line 308
    .local v2, "vh":Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 309
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v5, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->first:Z

    if-eqz v5, :cond_1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter$1;-><init>(Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;Lcom/android/settings_ex/notification/NotificationAppList$AppRow;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 322
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->getSubtitle(Lcom/android/settings_ex/notification/NotificationAppList$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v3, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationAppList;->access$200(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v3, v2, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings_ex/notification/NotificationAppList;->access$200(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 327
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 245
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppList$Row;

    .line 256
    .local v0, "r":Lcom/android/settings_ex/notification/NotificationAppList$Row;
    instance-of v1, v0, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NotificationAppList$Row;

    .line 262
    .local v0, "r":Lcom/android/settings_ex/notification/NotificationAppList$Row;
    if-nez p2, :cond_0

    .line 263
    invoke-virtual {p0, p3, v0}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NotificationAppList$Row;)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "v":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NotificationAppList$Row;Z)V

    .line 268
    return-object v1

    .line 265
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NotificationAppList$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NotificationAppList$Row;

    .prologue
    .line 272
    instance-of v2, p2, Lcom/android/settings_ex/notification/NotificationAppList$AppRow;

    if-nez v2, :cond_0

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAppList;->access$000(Lcom/android/settings_ex/notification/NotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040060

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;-><init>(Lcom/android/settings_ex/notification/NotificationAppList$1;)V

    .local v1, "vh":Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;
    move-object v2, v0

    .line 277
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 278
    iget-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 279
    iget-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 280
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 281
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    .line 282
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 283
    const v2, 0x7f0f000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ex/notification/NotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 285
    return-object v0
.end method
