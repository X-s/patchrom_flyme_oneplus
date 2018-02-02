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
.method static synthetic -get0(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)Lcom/oneplus/camera/ui/PreviewGallery;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->getCurrent()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "current"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->addFile(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deinitialize()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 0
    .param p1, "gallery"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->resetPages()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->rotatePages(F)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "clean"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->setPageData(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1053
    const-class v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isVertical"    # Z

    .prologue
    .line 1056
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1049
    const/4 v0, 0x7

    iput v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    .line 1051
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    .line 1057
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    .line 1055
    return-void
.end method

.method private addFile(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "current"    # I

    .prologue
    const/16 v2, 0x64

    .line 1107
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1108
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed on adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1111
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

    .line 1112
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1113
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1121
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->notifyDataSetChanged()V

    .line 1106
    return-void

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1115
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_Files addFile over max size error in secure mode, max size: 100 m_Files.size(): "

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

    goto :goto_0
.end method

.method private deinitialize()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1102
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1125
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1126
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed on deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1129
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1131
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1133
    .local v0, "fileItem":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1137
    .end local v0    # "fileItem":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->notifyDataSetChanged()V

    .line 1124
    return-void
.end method

.method private getCurrent()I
    .locals 3

    .prologue
    .line 1191
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap0(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-wrap0(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/base/Rotation;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1192
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-get15(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/camera/ui/CameraPager;->getCurrentItem()I

    move-result v0

    .line 1196
    .local v0, "current":I
    :goto_0
    return v0

    .line 1194
    .end local v0    # "current":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v1}, Lcom/oneplus/camera/ui/PreviewGallery;->-get14(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/ui/CameraPager;

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
    .line 1344
    new-instance v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$3;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/camera/ui/ScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    return-void
.end method

.method private initialize(Lcom/oneplus/camera/ui/PreviewGallery;)V
    .locals 8
    .param p1, "gallery"    # Lcom/oneplus/camera/ui/PreviewGallery;

    .prologue
    const/4 v7, 0x0

    .line 1075
    sget-object v5, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "initialize()"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iput-object p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    .line 1077
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1079
    .local v0, "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/oneplus/camera/ui/PreviewGallery;->-get3(Lcom/oneplus/camera/ui/PreviewGallery;)Lcom/oneplus/camera/io/FileManager;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_FileManager:Lcom/oneplus/camera/io/FileManager;

    .line 1081
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

    .line 1082
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    .line 1086
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1087
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1088
    .local v4, "parent":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1090
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    if-ge v1, v5, :cond_2

    .line 1092
    iget-boolean v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    if-eqz v5, :cond_1

    .line 1093
    const v5, 0x7f03002b

    invoke-virtual {v2, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1097
    .local v3, "page":Landroid/view/View;
    :goto_2
    iget v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageAngle:F

    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    .line 1098
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1084
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

    .line 1095
    .restart local v1    # "i":I
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_1
    const v5, 0x7f03002a

    invoke-virtual {v2, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "page":Landroid/view/View;
    goto :goto_2

    .line 1073
    .end local v3    # "page":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private resetPages()V
    .locals 3

    .prologue
    .line 1068
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "page$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1069
    .local v0, "page":Landroid/view/View;
    const v2, 0x7f0900c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ScaleImageView;->reset()V

    goto :goto_0

    .line 1067
    .end local v0    # "page":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private rotatePages(F)V
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 1061
    iput p1, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageAngle:F

    .line 1062
    iget-object v2, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "page$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1063
    .local v0, "page":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 1060
    .end local v0    # "page":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setPageData(IZ)V
    .locals 20
    .param p1, "position"    # I
    .param p2, "clean"    # Z

    .prologue
    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1202
    :cond_0
    return-void

    .line 1205
    :cond_1
    add-int/lit8 v2, p1, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    rem-int v10, v2, v4

    .line 1206
    .local v10, "cacheIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 1207
    .local v11, "file":Ljava/io/File;
    if-nez v11, :cond_2

    .line 1208
    return-void

    .line 1211
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    if-nez v2, :cond_3

    .line 1212
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "m_Pagers =null"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void

    .line 1215
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 1216
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onDeinitialize m_Pagers size == 0"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1220
    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1221
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file does not exist : cacheIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void

    .line 1225
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1227
    .local v3, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1228
    .local v19, "strMapPath":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1229
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPageData already set return : cacheIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    return-void

    .line 1232
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Map:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1233
    sget-object v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cacheIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1238
    .local v15, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_IsVertical:Z

    if-eqz v2, :cond_8

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-get8(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqWidth:I

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-get7(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqHeight:I

    .line 1245
    :goto_0
    const v2, 0x7f0900c2

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 1246
    .local v14, "preview":Lcom/oneplus/camera/ui/ScaleImageView;
    new-instance v2, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$1;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;)V

    invoke-virtual {v14, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1253
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setClickable(Z)V

    .line 1254
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1255
    .local v17, "softItem":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    new-instance v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1256
    .local v16, "softImage":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/oneplus/camera/ui/ScaleImageView;>;"
    if-eqz p2, :cond_7

    .line 1257
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/oneplus/camera/ui/ScaleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    :cond_7
    new-instance v18, Ljava/lang/ref/SoftReference;

    const v2, 0x7f0900c3

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1260
    .local v18, "softPlay":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1262
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 1263
    .local v13, "item":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/camera/ui/ScaleImageView;

    .line 1266
    .local v12, "image":Lcom/oneplus/camera/ui/ScaleImageView;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v1, v3}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->handleLaunchGallery(Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/String;)V

    .line 1267
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    new-instance v8, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v12, v10, v1}, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter$2;-><init>(Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;Lcom/oneplus/camera/ui/ScaleImageView;ILjava/lang/ref/SoftReference;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/PreviewGallery;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1267
    const/4 v4, 0x0

    const/16 v5, 0x780

    const/16 v6, 0x780

    const/4 v7, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    .line 1199
    return-void

    .line 1242
    .end local v12    # "image":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "preview":Lcom/oneplus/camera/ui/ScaleImageView;
    .end local v16    # "softImage":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/oneplus/camera/ui/ScaleImageView;>;"
    .end local v17    # "softItem":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v18    # "softPlay":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/widget/ImageView;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-get9(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqWidth:I

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-static {v2}, Lcom/oneplus/camera/ui/PreviewGallery;->-get6(Lcom/oneplus/camera/ui/PreviewGallery;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_ReqHeight:I

    goto/16 :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1157
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1162
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1144
    sget-object v0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Return 0 due to failed on getCount."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/4 v0, 0x0

    return v0

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Page "

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
    .line 1166
    sget-object v5, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "instantiateItem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const/4 v3, 0x0

    .line 1169
    .local v3, "ret":Landroid/view/View;
    if-nez p2, :cond_0

    .line 1170
    :try_start_0
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PreviewGallery:Lcom/oneplus/camera/ui/PreviewGallery;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/PreviewGallery;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v4, "ret":Landroid/view/View;
    move-object v3, v4

    .line 1180
    .end local v3    # "ret":Landroid/view/View;
    .end local v4    # "ret":Landroid/view/View;
    :goto_0
    return-object v3

    .line 1172
    .restart local v3    # "ret":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, p2, -0x1

    iget v6, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_PageSize:I

    rem-int v1, v5, v6

    .line 1173
    .local v1, "cacheIndex":I
    iget-object v5, p0, Lcom/oneplus/camera/ui/PreviewGallery$PreviewPagerAdapter;->m_Pagers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    .line 1174
    .local v3, "ret":Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1175
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1177
    .end local v1    # "cacheIndex":I
    .end local v3    # "ret":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 1178
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
    .line 1185
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
