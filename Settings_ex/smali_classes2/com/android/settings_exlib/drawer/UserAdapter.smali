.class public Lcom/android/settings_exlib/drawer/UserAdapter;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A list of user details must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iput-object p2, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    .line 88
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    return-void
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings_exlib/R$layout;->user_preference:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings_exlib/drawer/UserAdapter;
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settings_exlib/drawer/UserAdapter;"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v2, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 209
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    new-instance v4, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-direct {v4, v3, p0, p1}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    new-instance v3, Lcom/android/settings_exlib/drawer/UserAdapter;

    invoke-direct {v3, p1, v2}, Lcom/android/settings_exlib/drawer/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_exlib/drawer/UserAdapter;
    .locals 4
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 194
    const/4 v2, 0x0

    return-object v2

    .line 197
    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 199
    .local v0, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 200
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    invoke-static {p0, p1, v1}, Lcom/android/settings_exlib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings_exlib/drawer/UserAdapter;

    move-result-object v2

    return-object v2
.end method

.method private getTitle(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)I
    .locals 2
    .param p1, "user"    # Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 110
    .local v0, "userHandle":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 111
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    sget v1, Lcom/android/settings_exlib/R$string;->category_personal:I

    return v1

    .line 114
    :cond_1
    sget v1, Lcom/android/settings_exlib/R$string;->category_work:I

    return v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 102
    .local v0, "row":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    .line 103
    .local v1, "user":Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->-get0(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settings_exlib/drawer/UserAdapter;->getTitle(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    return-object v0

    .line 100
    .end local v0    # "row":Landroid/view/View;
    .end local v1    # "user":Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings_exlib/drawer/UserAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "row":Landroid/view/View;
    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/drawer/UserAdapter;->getItem(I)Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;

    invoke-static {v0}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->-get1(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings_exlib/drawer/UserAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 123
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 128
    return-void
.end method
