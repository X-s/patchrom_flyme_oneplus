.class public Lcom/oneplus/gallery2/ActivityLaunchEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ActivityLaunchEventArgs.java"


# instance fields
.field private final m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

.field private final m_LaunchType:Lcom/oneplus/gallery2/ActivityLaunchType;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GalleryActivity;Lcom/oneplus/gallery2/ActivityLaunchType;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    .line 23
    iput-object p2, p0, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;->m_LaunchType:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 24
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/oneplus/gallery2/GalleryActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;->m_Activity:Lcom/oneplus/gallery2/GalleryActivity;

    return-object v0
.end method

.method public getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/ActivityLaunchEventArgs;->m_LaunchType:Lcom/oneplus/gallery2/ActivityLaunchType;

    return-object v0
.end method
