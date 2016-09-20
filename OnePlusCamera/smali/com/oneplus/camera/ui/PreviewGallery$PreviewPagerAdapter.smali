.class Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PreviewGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPagerAdapter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_FileManager:Lcom/oneplus/camera/io/FileManager;

.field private m_Files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsVertical:Z

.field private m_Map:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_PageAngle:F

.field private m_PageSize:I

.field private m_Pagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

.field private m_ReqHeight:I

.field private m_ReqWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1057
    const-class v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isVertical"    # Z

    .prologue
    .line 1060
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1053
    const/4 v0, 0x7

    iput v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    .line 1055
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    .line 1061
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    .line 1062
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deinitialize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;F)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p1, "x1"    # F

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->rotatePages(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # I

    .prologue
    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCurrent()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "current"    # I

    .prologue
    const/16 v2, 0x64

    .line 1111
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1112
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed on adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1117
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1124
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1125
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1119
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_Files addFile over max size error in secure mode, max size: 100 m_Files.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deinitialize()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1108
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1130
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1135
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1137
    .local v0, "fileItem":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1141
    .end local v0    # "fileItem":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private getCurrent()I
    .locals 3

    .prologue
    .line 1195
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4400(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # invokes: Lcom/oneplus/camera/ui/PreviewGallery;->getRotation()Lcom/oneplus/base/Rotation;
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4500(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1196
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1200(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v0

    .line 1200
    .local v0, "current":I
    :goto_0
    return v0

    .line 1198
    .end local v0    # "current":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_VerticalViewPager:Lcom/oneplus/camera/ui/CameraPager;
    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1300(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v0

    .restart local v0    # "current":I
    goto :goto_0
.end method

.method private handleLaunchGallery(Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/String;)V
    .locals 1
    .param p1, "image"    # Lcom/oneplus/camera/ui/ScaleImageView;
    .param p2, "position"    # I
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 1348
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    return-void
.end method

.method private initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 8
    .param p1, "gallery"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    const/4 v7, 0x0

    .line 1079
    sget-object v5, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string v6, "initialize()"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    .line 1081
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1083
    .local v0, "context":Landroid/content/Context;
    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_FileManager:Lcom/oneplus/camera/io/FileManager;
    invoke-static {p1}, Lcom/oneplus/camera/ui/PreviewGallery;->access$1100(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    .line 1085
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/PreviewGallery;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1086
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    .line 1090
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1091
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v4, "parent":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    if-ge v1, v5, :cond_2

    .line 1096
    iget-boolean v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    if-eqz v5, :cond_1

    .line 1097
    const v5, 0x7f03001c

    invoke-virtual {v2, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1101
    .local v3, "page":Landroid/view/View;
    :goto_2
    iget v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageAngle:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    .line 1102
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1088
    .end local v1    # "i":I
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "page":Landroid/view/View;
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    invoke-interface {v5}, Lcom/oneplus/camera/io/FileManager;->getMediaFiles()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    goto :goto_0

    .line 1099
    .restart local v1    # "i":I
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_1
    const v5, 0x7f03001b

    invoke-virtual {v2, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "page":Landroid/view/View;
    goto :goto_2

    .line 1104
    .end local v3    # "page":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private resetPages()V
    .locals 3

    .prologue
    .line 1072
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1073
    .local v1, "page":Landroid/view/View;
    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ScaleImageView;->reset()V

    goto :goto_0

    .line 1075
    .end local v1    # "page":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private rotatePages(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 1065
    iput p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageAngle:F

    .line 1066
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1067
    .local v1, "page":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 1069
    .end local v1    # "page":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setPageData(IZ)V
    .locals 19
    .param p1, "position"    # I
    .param p2, "clean"    # Z

    .prologue
    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    rem-int v9, v2, v4

    .line 1210
    .local v9, "cacheIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    .line 1211
    .local v10, "file":Ljava/io/File;
    if-eqz v10, :cond_0

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1216
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string v4, "m_Pagers =null"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1220
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string v4, "onDeinitialize m_Pagers size == 0"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1225
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file does not exist : cacheIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1231
    .local v3, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1232
    .local v18, "strMapPath":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1233
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPageData already set return : cacheIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1237
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 1242
    .local v14, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    if-eqz v2, :cond_7

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandWidth:I
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4600(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqWidth:I

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageLandHeight:I
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4700(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqHeight:I

    .line 1249
    :goto_1
    const v2, 0x7f0b0076

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 1250
    .local v13, "preview":Lcom/oneplus/camera/ui/ScaleImageView;
    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    invoke-virtual {v13, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1257
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setClickable(Z)V

    .line 1258
    new-instance v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1259
    .local v16, "softItem":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    new-instance v15, Ljava/lang/ref/SoftReference;

    invoke-direct {v15, v13}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1260
    .local v15, "softImage":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/oneplus/camera/ui/ScaleImageView;>;"
    if-eqz p2, :cond_6

    .line 1261
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    :cond_6
    new-instance v17, Ljava/lang/ref/SoftReference;

    const v2, 0x7f0b0077

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1264
    .local v17, "softPlay":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1266
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1267
    .local v12, "item":Landroid/view/View;
    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 1270
    .local v11, "image":Lcom/oneplus/camera/ui/ScaleImageView;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1, v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->handleLaunchGallery(Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/String;)V

    .line 1271
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    const/16 v4, 0x780

    const/16 v5, 0x780

    const/4 v6, 0x3

    new-instance v7, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v11, v9, v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/ref/SoftReference;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v8}, Lcom/oneplus/camera/ui/PreviewGallery;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 1246
    .end local v11    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v12    # "item":Landroid/view/View;
    .end local v13    # "preview":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v15    # "softImage":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/oneplus/camera/ui/ScaleImageView;>;"
    .end local v16    # "softItem":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v17    # "softPlay":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageWidth:I
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4800(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqWidth:I

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    # getter for: Lcom/oneplus/camera/ui/PreviewGallery;->m_ImageHeight:I
    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->access$4900(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqHeight:I

    goto/16 :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1161
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1166
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1148
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Return 0 due to failed on getCount."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v0, 0x0

    .line 1151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 1170
    sget-object v5, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "instantiateItem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const/4 v3, 0x0

    .line 1173
    .local v3, "ret":Landroid/view/View;
    if-nez p2, :cond_0

    .line 1174
    :try_start_0
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .end local v3    # "ret":Landroid/view/View;
    .local v4, "ret":Landroid/view/View;
    move-object v3, v4

    .line 1184
    .end local v4    # "ret":Landroid/view/View;
    .restart local v3    # "ret":Landroid/view/View;
    :goto_0
    return-object v3

    .line 1176
    :cond_0
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    rem-int v1, v5, v6

    .line 1177
    .local v1, "cacheIndex":I
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 1178
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1179
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    .end local v1    # "cacheIndex":I
    :catch_0
    move-exception v2

    .line 1182
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1189
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
