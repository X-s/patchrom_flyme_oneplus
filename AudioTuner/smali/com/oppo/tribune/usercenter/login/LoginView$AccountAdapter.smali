.class Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "LoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/usercenter/login/LoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;,
        Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/oppo/tribune/usercenter/login/LoginView;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/usercenter/login/LoginView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/usercenter/login/SignInRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oppo/tribune/usercenter/login/SignInRecord;>;"
    iput-object p1, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->this$0:Lcom/oppo/tribune/usercenter/login/LoginView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mAccountList:Ljava/util/List;

    .line 273
    iput-object p2, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mAccountList:Ljava/util/List;

    .line 276
    return-void
.end method

.method static synthetic access$500(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 290
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 296
    if-nez p2, :cond_0

    .line 297
    new-instance v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;Lcom/oppo/tribune/usercenter/login/LoginView$1;)V

    .line 298
    .local v0, "holder":Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030035

    const/4 v7, 0x0

    invoke-virtual {v3, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 300
    const v3, 0x7f0b0137

    invoke-static {p2, v3}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;->mAccountName:Landroid/widget/TextView;

    .line 302
    const v3, 0x7f0b0138

    invoke-static {p2, v3}, Lcom/oppo/tribune/util/Views;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;->mDelteleButton:Landroid/widget/Button;

    .line 305
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    :goto_0
    iget-object v3, p0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;->mAccountList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/usercenter/login/SignInRecord;

    .line 311
    .local v1, "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/oppo/tribune/usercenter/login/SignInRecord;->getUid()J

    move-result-wide v4

    .line 313
    .local v4, "uid":J
    iget-object v3, v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;->mDelteleButton:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$DelAccountListener;-><init>(Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter;Ljava/lang/String;J)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-object p2

    .line 307
    .end local v0    # "holder":Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;
    .end local v1    # "item":Lcom/oppo/tribune/usercenter/login/SignInRecord;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "uid":J
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/oppo/tribune/usercenter/login/LoginView$AccountAdapter$ViewHolder;
    goto :goto_0
.end method
