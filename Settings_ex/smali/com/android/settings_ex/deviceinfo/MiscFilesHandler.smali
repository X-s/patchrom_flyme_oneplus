.class public Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemorySettings"


# instance fields
.field private mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mDataCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mDataCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 65
    const v1, 0x7f0908ea

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 66
    const v1, 0x7f0908eb

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 67
    const v1, 0x7f0908ec

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 68
    new-instance v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 69
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    const v1, 0x7f0400cd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 73
    .local v0, "lv":Landroid/widget/ListView;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 77
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 78
    new-instance v1, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->unRegistDataInitReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;)V

    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 86
    return-void
.end method
