.class Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/oneplus/settings/notification/OPNotificationAppList$Row;",
        ">;"
    }
.end annotation


# instance fields
.field private firstConvertView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private secondView:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 288
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    .line 289
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 290
    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    .line 291
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 292
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 397
    if-eqz p2, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 399
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 402
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method

.method private getSubtitle(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .prologue
    .line 448
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0c94

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "priString":Ljava/lang/String;
    iget-boolean v1, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->banned:Z

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0151

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .end local v0    # "priString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 454
    .restart local v0    # "priString":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->priority:Z

    if-nez v1, :cond_0

    .line 455
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/oneplus/settings/notification/OPNotificationAppList$Row;ZI)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/oneplus/settings/notification/OPNotificationAppList$Row;
    .param p3, "animate"    # Z
    .param p4, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 407
    instance-of v4, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v4, :cond_0

    .line 444
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 414
    check-cast v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 415
    .local v0, "row":Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;

    .line 416
    .local v2, "vh":Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 417
    if-nez p4, :cond_1

    .line 418
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_1
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v5, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$3;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 438
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->getSubtitle(Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 420
    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    iget-object v4, v2, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 443
    .restart local v1    # "sub":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 301
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    move v1, v2

    .line 319
    :cond_1
    :goto_0
    return v1

    .line 318
    :cond_2
    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Row;

    .line 319
    .local v0, "r":Lcom/oneplus/settings/notification/OPNotificationAppList$Row;
    instance-of v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 323
    if-nez p1, :cond_2

    .line 324
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040086

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    .line 327
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    const v8, 0x7f1200f3

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/widget/button/OPSwitch;

    # setter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v7, v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$202(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/widget/button/OPSwitch;)Lcom/oneplus/widget/button/OPSwitch;

    .line 329
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/button/OPSwitch;->setClickable(Z)V

    .line 330
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/oneplus/widget/button/OPSwitch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v7}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getValue(Landroid/content/Context;)I

    move-result v2

    .line 337
    .local v2, "switchValue":I
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v7

    if-eqz v2, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    .line 338
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/widget/button/OPSwitch;

    move-result-object v4

    new-instance v5, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/button/OPSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    new-instance v5, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter$2;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    .line 375
    .end local v2    # "switchValue":I
    :goto_2
    return-object v3

    .line 333
    :cond_0
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->firstConvertView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/widget/button/OPSwitch;

    # setter for: Lcom/oneplus/settings/notification/OPNotificationAppList;->switchBtn:Lcom/oneplus/widget/button/OPSwitch;
    invoke-static {v7, v4}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$202(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/widget/button/OPSwitch;)Lcom/oneplus/widget/button/OPSwitch;

    goto :goto_0

    .restart local v2    # "switchValue":I
    :cond_1
    move v4, v6

    .line 337
    goto :goto_1

    .line 357
    .end local v2    # "switchValue":I
    :cond_2
    if-ne p1, v5, :cond_4

    .line 358
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->secondView:Landroid/view/View;

    if-nez v4, :cond_3

    .line 359
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040087

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->secondView:Landroid/view/View;

    .line 361
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->secondView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 362
    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->secondView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->secondView:Landroid/view/View;

    goto :goto_2

    .line 366
    :cond_4
    add-int/lit8 v0, p1, -0x2

    .line 367
    .local v0, "appPosition":I
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/notification/OPNotificationAppList$Row;

    .line 369
    .local v1, "r":Lcom/oneplus/settings/notification/OPNotificationAppList$Row;
    if-nez p2, :cond_5

    .line 370
    invoke-virtual {p0, p3, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/oneplus/settings/notification/OPNotificationAppList$Row;)Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, "v":Landroid/view/View;
    :goto_3
    invoke-virtual {p0, v3, v1, v6, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/oneplus/settings/notification/OPNotificationAppList$Row;ZI)V

    goto :goto_2

    .line 372
    .end local v3    # "v":Landroid/view/View;
    :cond_5
    move-object v3, p2

    .restart local v3    # "v":Landroid/view/View;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/oneplus/settings/notification/OPNotificationAppList$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/oneplus/settings/notification/OPNotificationAppList$Row;

    .prologue
    .line 380
    instance-of v2, p2, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v2, :cond_0

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$NotificationAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040084

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList$1;)V

    .local v1, "vh":Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;
    move-object v2, v0

    .line 385
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 386
    iget-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 387
    iget-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 388
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 389
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    .line 390
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 391
    const v2, 0x7f1200ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    .line 392
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 393
    return-object v0
.end method
