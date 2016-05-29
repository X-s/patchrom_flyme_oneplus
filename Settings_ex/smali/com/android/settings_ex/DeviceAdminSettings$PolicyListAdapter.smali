.class Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings;)V
    .locals 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 186
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 335
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 336
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    .line 337
    .local v4, "vh":Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    .local v1, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v7, p2}, Lcom/android/settings_ex/DeviceAdminSettings;->access$200(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 340
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v6, p2}, Lcom/android/settings_ex/DeviceAdminSettings;->access$100(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 343
    invoke-direct {p0, p2}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    .line 345
    .local v3, "enabled":Z
    :try_start_0
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 349
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 350
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 351
    iget-object v5, v4, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 352
    return-void

    .line 346
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 280
    instance-of v2, p1, Landroid/app/admin/DeviceAdminInfo;

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 284
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 285
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->access$100(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v2, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->access$200(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->isDeviceOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->access$300(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->access$400(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # invokes: Lcom/android/settings_ex/DeviceAdminSettings;->isRemovingAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ex/DeviceAdminSettings;->access$500(Lcom/android/settings_ex/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 317
    .local v0, "h":Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 318
    const v2, 0x7f0f0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 319
    const v2, 0x7f0f00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 320
    const v2, 0x7f0f00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 321
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    return-object v1
.end method

.method private newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 326
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 329
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 331
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "adminCount":I
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 197
    .local v2, "profileCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    add-int v3, v0, v2

    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 212
    if-gez p1, :cond_0

    .line 213
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 218
    :cond_0
    move v0, p1

    .line 219
    .local v0, "adminPosition":I
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 220
    .local v3, "n":I
    const/4 v1, 0x0

    .line 221
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 223
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 224
    .local v2, "listSize":I
    if-ge v0, v2, :cond_2

    .line 229
    .end local v2    # "listSize":I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 230
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 227
    .restart local v2    # "listSize":I
    :cond_2
    sub-int/2addr v0, v2

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "listSize":I
    :cond_3
    if-nez v0, :cond_5

    .line 234
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 235
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 236
    const v5, 0x7f090887

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 238
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    const v5, 0x7f090888

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 242
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    # getter for: Lcom/android/settings_ex/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/settings_ex/DeviceAdminSettings;->access$000(Lcom/android/settings_ex/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 248
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

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
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v2, :cond_1

    .line 300
    if-nez p2, :cond_0

    .line 301
    invoke-direct {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 303
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 311
    :goto_0
    return-object p2

    .line 305
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 306
    invoke-direct {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 308
    :cond_2
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 309
    .local v1, "title":Landroid/widget/TextView;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
